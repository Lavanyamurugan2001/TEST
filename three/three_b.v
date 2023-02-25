module three_b ( a,c,sel,b);
output b;
input a;
input c;
input sel;
assign b = sel ? a:c;
endmodule
