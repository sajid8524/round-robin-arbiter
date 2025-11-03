module grant_fsm #(parameter N=4, parameter W=4) (
    input  wire                clk,
    input  wire                reset_n,
    input  wire [N-1:0]        request,
    input  wire [N-1:0]        next_grant_mask,
    input  wire [W-1:0]        grant_weight,
    output reg  [N-1:0]        grant
);
    reg [W-1:0] weight_count;
    reg [N-1:0] current_grant;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            grant        <= 0;
            weight_count <= 0;
            current_grant<= 0;
        end else begin
            if(weight_count == 0) begin
                if(|next_grant_mask) begin
                    if(next_grant_mask[0]) current_grant <= 4'b0001;
                    else if(next_grant_mask[1]) current_grant <= 4'b0010;
                    else if(next_grant_mask[2]) current_grant <= 4'b0100;
                    else if(next_grant_mask[3]) current_grant <= 4'b1000;
                    weight_count <= grant_weight;
                end else begin
                    current_grant <= 0;
                    weight_count <= 0;
                end
            end else begin
                weight_count <= weight_count - 1;
            end
            grant <= current_grant;
        end
    end
endmodule
