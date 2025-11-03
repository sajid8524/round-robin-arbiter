module weighted_rr_arbiter #(parameter N=4, parameter W=4) (
    input  wire clk,
    input  wire reset_n,
    input  wire [N-1:0] request,
    input  wire [N*W-1:0] weights,
    output wire [N-1:0] grant
);

    wire [N-1:0] next_grant_mask;
    wire [W-1:0] cur_weight;
    wire [N-1:0] grant_internal;

    ngprc #(N) ngprc_inst (
        .clk(clk),
        .reset_n(reset_n),
        .request(request),
        .grant(grant_internal),
        .next_grant_mask(next_grant_mask)
    );

    weight_decoder #(N, W) weight_decoder_inst (
        .grant_onehot(grant_internal),
        .weight_bus(weights),
        .weight_out(cur_weight)
    );

    grant_fsm #(N, W) grant_fsm_inst (
        .clk(clk),
        .reset_n(reset_n),
        .request(request),
        .next_grant_mask(next_grant_mask),
        .grant_weight(cur_weight),
        .grant(grant_internal)
    );

    assign grant = grant_internal;

endmodule
