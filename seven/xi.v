module mux (d,q,enable,y);
input d,q, enable;
output reg y;
always @ (*)
case(enable)
//begin
 1'b0 : y =q;
 1'b1 : y =d;
 1'b1 : y =q;
//end
endcase
endmodule 
