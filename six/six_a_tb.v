module six_a_tb;
reg d;
reg reset;
reg clock;
wire q;
six_a uut (.d(d),.clock(clock),.q(q),.reset(reset));
initial
begin
 $dumpfile("dump.vcd");
$dumpvars(0,six_a_tb);
end
initial
begin
 clock = 0;
 reset=0;
reset = 1'b1;
#5 d= 1'b0;
#5 d= 1'b1;
#5 d= 1'b1;
#300 $finish;
end
always # 5 clock = ~clock;
always #5 reset= ~reset;
endmodule
