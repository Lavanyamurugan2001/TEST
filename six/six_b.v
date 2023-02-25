module six_b (reset,clock,d,q);
input d;
input clock;
input reset;
output reg q;
always @ ( posedge clock or  negedge reset)
begin
if (!reset)
q<= 0;
else 
q<=d;
 end
 endmodule
