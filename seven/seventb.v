module seventb;
reg y;
reg clock;
wire q;
seven uut (.y(y),.q(q),.clock(clock));
initial
begin
$dumpfile("seven.vcd");
$dumpvars(0,seventb);
end
initial
begin
 clock =0;
 #5 y = 1'b0;
 #5 y = 1'b1;
 #5 y = 1'b1;
 #5 y = 1'b0;
 #5 y = 1'b1;
#100 $finish;
end
always #5 clock= ~clock;
endmodule
