module two_a(enable,d,y);
input enable;
input d;
output reg y;
always @ (*)
begin
 if ( enable)
   y<=d;
else
   y<=0;
end
endmodule
