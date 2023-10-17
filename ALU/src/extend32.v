module extend32(SUBctr, extend_out);
	input SUBctr;
	output[31:0] extend_out;
	
	begin
		if(SUBctr == 1)
			assign extend_out = 32'hffffffff;
		else
			assign extend_out = 32'b0;
	end
endmodule