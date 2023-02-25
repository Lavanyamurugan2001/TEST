module three_a ( a,c,sel,b);
input a;
input c;
input sel;
output reg b;
always@(*)
 case ( sel)
  1'b1 : b = a;
  1'b0 : b = c;
endcase
endmodule
