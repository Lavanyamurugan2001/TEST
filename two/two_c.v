module two_c(d,y,enable);
input d;
input enable;
output  y;
buffer  uut (.y(y),.d(d) ,.enable(enable));
endmodule


