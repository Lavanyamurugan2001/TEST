module four_tb;
reg d;
reg enable;
wire q;
four uut (.d(d),.q(q),.enable(enable));
initial
begin 
$dumpfile("four.vcd");
$dumpvars(0,four_tb);
end
initial
begin
    enable = 1'b0;
#5  d= 1'b0;
#5  enable = 1'b1;
#5  d = 1'b1;
#100 $finish;
end
endmodule	
