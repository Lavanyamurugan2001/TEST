module four ( d,q,enable);
input d;
input enable;
output reg q;
always @ (*)
begin
 if (enable)
   q<=d;
else
   q<=0;
end
endmodule
