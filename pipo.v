module pipo(input clk,rst,[3:0] d_in,output [3:0] d_out);
  d_ff d0(clk,rst,d_in[0],d_out[0]);
  d_ff d1(clk,rst,d_in[1],d_out[1]);
  d_ff d2(clk,rst,d_in[2],d_out[2]);
  d_ff d3(clk,rst,d_in[3],d_out[3]);
endmodule
module d_ff(input clk,rst,in,output reg q);
  always @(posedge clk or posedge rst)begin
    if(rst)
      q<=0;
    else
      q<=in;
  end
endmodule
