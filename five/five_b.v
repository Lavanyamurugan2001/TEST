module five_b(d,q,clock);
input d;
input clock;
output  reg q;
always @ (negedge clock)
q<= d;
endmodule

