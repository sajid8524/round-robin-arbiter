// tb_weighted_rr_arbiter.v
module tb_weighted_rr_arbiter;
  reg clk = 0, reset_n = 0;
  reg [3:0] request;
  reg [15:0] weights;
  wire [3:0] grant;

  weighted_rr_arbiter uut(clk, reset_n, request, weights, grant);

  always #5 clk = ~clk; // 100 MHz clock

  initial begin
    reset_n = 0; #10; reset_n = 1;
    request = 4'b1011; weights = 16'h1111;
    #100; request = 4'b0110;
    #100; $finish;
  end
endmodule
