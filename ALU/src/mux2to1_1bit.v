module mux2to1_1bit(choice1, choice2, out, sel);
	input choice1, choice2, sel;
	output out;
	
	begin
		case(sel)
		0: assign out = choice1;
		1: assign out = choice2;
	end
endmodule