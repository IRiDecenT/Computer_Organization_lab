module ALU(A, B, ALUctr, Zero, Overflow, Result);
	parameter n = 32;
	input [n-1:0] A;
	input [n-1:0] B;
	input [2:0] ALUctr;
	output [n-1:0] Result;
	//flags
	output Zero;
	output Overflow;
	
	// ctr signals
	wire SUBctr, OVctr, SIGctr;
	wire[1:0] OPctr;
	
	ctrgenerator generator(.ALUctr(ALUctr), 
						   .SUBctr(SUBctr), 
						   .OPctr(OPctr),
					       .OVctr(OVctr), 
					       .SIGctr(SIGctr));
	
	
	
	
 	 		