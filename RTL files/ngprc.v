module ngprc #(parameter N=4) (
    input  wire                clk,
    input  wire                reset_n,
    input  wire [N-1:0]        request,
    input  wire [N-1:0]        grant,
    output reg  [N-1:0]        next_grant_mask
);
    reg [N-1:0] priority_mask;

    always @(posedge clk or negedge reset_n) begin
        if(!reset_n) begin
            priority_mask <= {N{1'b1}};
            next_grant_mask <= 0;
        end else begin
            priority_mask <= ~({grant[N-2:0], grant[N-1]}) + 1;
            if(priority_mask == 0)
                priority_mask <= ~0;

            next_grant_mask <= request & priority_mask;
            if(next_grant_mask == 0 && request != 0)
                next_grant_mask <= request;
        end
    end
endmodule
