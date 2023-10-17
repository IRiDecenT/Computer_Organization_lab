module crtgenerator(ALUctr, SUBctr, OPctr, OVctr, SIGctr);
	parameter n = 3;
	input[n-1:0] ALUctr;
	output SUBctr, OVctr, SIGctr;
	output[2:0] OPctr; 
	
	begin
		assign SUBctr = ALUctr[2];
		assign OVctr = !ALUctr[1] & ALUctr[0];
		assign SIGctr = ALUctr[0];
		assign OPctr[1] = ALUctr[2] & ALUctr[1];
		assign OPctr[0] = !ALUctr[2] & ALUctr[1] & !ALUctr[0];
	end
endmodule
	