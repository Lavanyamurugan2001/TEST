module one_b(a,b,c);
input a;
input b;
output c;
//always @ (a or b or c)

 and (c,a,b);

endmodule
