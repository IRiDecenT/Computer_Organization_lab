module mux2to1_32bit_01mux(sel, out);
	input sel;
	output[31:0] out;
	
	begin
		case(sel)
		0: assign out = 32'b0;
		1: assign out = 32'hffffffff;
	end
endmodule
