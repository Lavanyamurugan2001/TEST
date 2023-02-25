module four_b( reset,enable,d,q);
input d;
input enable;
input reset;
output reg q;
always @ ( *)
begin
if (reset) 
  q<= 0;
else
   q<=d;
end
endmodule
