module weight_decoder #(parameter N=4, parameter W=4) (
    input  wire [N-1:0]            grant_onehot,
    input  wire [N*W-1:0]          weight_bus,
    output reg  [W-1:0]            weight_out
);
    integer i;
    always @(*) begin
        weight_out = 0;
        for(i=0; i<N; i=i+1)
            if(grant_onehot[i])
                weight_out = weight_bus[W*i +: W];
    end
endmodule
