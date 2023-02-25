module one_b_tb;
reg a;
reg b;
wire c;
one_b uut (. a(a),. b(b),.c(c));
 initial
begin
$dumpfile ( "dump.vcd");
$dumpvars (0, one_b_tb);
end
initial
begin
# 5 a = 1'b0 ; b= 1'b0;
# 5 a = 1'b0;  b= 1'b1;
# 5 a = 1'b1;  b= 1'b0;
# 5 a = 1'b1;  b= 1'b1;
# 100 $finish ;
//# 5 c = 2'b10;
//# 5 c = 2'b11;
end
endmodule
 
