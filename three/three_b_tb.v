module three_a_tb;
wire b;
reg a;
reg c;
reg sel;
three_b uut (.a(a),.b(b),.c(c),.sel(sel));
initial
begin
$dumpfile (" three.vcd");
$dumpvars(0,three_a_tb);
end
initial
begin
   sel = 1'b0;
   #5 sel = 1'b1;
# 5 a = 1'b1;
# 5 c = 1'b0;
# 5 a = 1'b0;
# 5 c = 1'b1;
end
endmodule

