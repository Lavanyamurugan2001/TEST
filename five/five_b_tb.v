module five_b_tb;
reg d;
reg clock;
wire q;
five_b uut ( .d(d),.clock(clock),.q(q));
initial
begin
   $dumpfile ("five_b.vcd");
   $dumpvars (0, five_b_tb);
end
initial
begin
 clock =0;
 #5 d = 1'b0;
 #5 d = 1'b1;
 #5 d = 1'b1;
#100 $finish;
end
always # 5 clock= ~clock;
endmodule


