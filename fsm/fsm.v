module seq_1001(input din, clk, rst,
                output reg dout);
  

  parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3;
  
  
  reg [2:0] state, next_state;
  
  
  always @ (*) begin
    case (state)
      S0: next_state = din ? S1 : S0;
      S1: next_state = din ? S1 : S2;
      S2: next_state = din ? S1 : S3;
      S3: next_state = S0;
      default: next_state = S0;
    endcase
  end
  
  
  always @ (posedge clk) begin
    if (rst) state <= 2'b00;
    else state <= next_state;
  end
  
 
  always @ (posedge clk) begin
    if (rst) dout <= 1'b0;
    else begin
      if (din & (state == S3)) dout <= 1'b1;
      else dout <= 1'b0;
    end
  end
endmodule
