module five_tb;
reg clock;
reg d;
wire q;
five uut (.d(d),.q(q),.clock(clock));
initial
begin
 $dumpfile("five.vcd");
$dumpvars(0,five_tb);
end
initial
begin
 clock = 0;
# 5 d = 1'b0;
# 5 d = 1'b1;
# 5 d = 1'b0;
# 5 d = 1'b1;
#100 $finish;
end
always  #5 clock = ~ clock;
endmodule
