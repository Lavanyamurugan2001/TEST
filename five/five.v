module five (d,q,clock);
input clock;
input d;
output reg q;
always @ ( posedge clock )
q<=d;
endmodule
