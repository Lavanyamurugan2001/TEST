module sixtb_b;
reg d;
reg clock; 
reg reset;
wire q;
six_b uut ( .reset(reset),.clock(clock),.q(q),.d(d));
initial
begin
$dumpfile("six.vcd");
$dumpvars(0,sixtb_b);
end
initial
begin
 clock =0;
 reset = 0;
#5 d = 1'b0;
#5 d = 1'b1;
#5 d = 1'b0;
#5 d = 1'b1;
#100 $finish;
end
always #5 clock = ~clock;
always # 5 reset = ~reset;
endmodule
