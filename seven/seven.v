module seven(y,q,clock);
input y;
input clock;
output reg q;
mux uut (.q(q),.d(y),.enable(clock));
endmodule
