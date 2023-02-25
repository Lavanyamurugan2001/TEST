module two_b_tb;
reg enable;
reg d;
wire y;
two_b_b uut (.enable(enable),.d(d),.y(y));
initial
begin
$dumpfile("two.vcd");
$dumpvars(0,two_b_tb);
end
initial
begin
 enable =1'b0;
#5 enable = 1'b1;
# 5 d = 1'b0;
# 10 d = 1'b1;
# 300 $finish;
end
endmodule
