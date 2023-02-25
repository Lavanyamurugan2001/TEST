module six_a ( d,clock,q,reset);
input d;
input reset;
input clock;
output reg q;
//wire y;
always @ ( posedge clock)
 //mux uut ( d(y),.clock(reset),.q(q));
begin
if(reset)
q<=0;
else
q<= d;
end
endmodule












