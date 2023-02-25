module four_b_tb;
reg d;
reg enable;
reg reset;
wire q;
four_b uut (.reset(reset),. d(d),.enable(enable),.q(q));
initial
begin
 $dumpfile ("four_b.vcd");
$dumpvars(0,four_b_tb);
end
 initial
begin
reset = 1'b0;
#5 reset = 1'b1;
#5 reset = 1'b0;
#5 enable = 1'b1;
#5 d = 1'b0;
#5 d = 1'b1;
#5 d = 1'b0;
#5 d = 1'b1;
#100 $finish;
end
endmodule


