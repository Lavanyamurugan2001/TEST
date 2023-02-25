module two_a_tb;
reg enable;
reg d;
wire y;
two_a uut ( .enable(enable),.d(d),.y(y));
initial
begin
$dumpfile("two.vcd");
$dumpvars( 0, two_a_tb);
end
initial
begin
 enable = 1'b0;
#5 enable = 1'b1;
#5 d = 1'b0;
#5 d = 1'b1;
#100 $finish;
end
endmodule

