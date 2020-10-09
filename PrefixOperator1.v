module PrefixOperator1(out,in1,in2,in3,in4);

input in1,in2,in3,in4;
output [1:0]out;

assign out[0] = in2 & in4;
assign out[1] = in1 | (in2 & in3);

endmodule
