module fsm;
  reg din;
  reg clk;
  reg rst;
  wire dout;
  seq_1001 uut (.din(din),.clk(clk),.rst(rst),.dout(dout));
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,fsm);
    end
  initial
    begin
      clk= 0;
      rst = 0;
      #5 din = 1'b0;
      #5 din = 1'b1;
      #5 din = 1'b0;
      #5 din = 1'b1;
      #5 din = 1'b0;
      #5 din = 1'b1;
      #5 din = 1'b0;
      #5 din = 1'b1;
      #5 din = 1'b0;
      #5 din = 1'b1;
      #5 din = 1'b0;
      #5 din = 1'b1;
      #5 din = 1'b0;
end
always #5 clk = ~clk;
endmodule
