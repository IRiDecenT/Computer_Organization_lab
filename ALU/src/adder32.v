module adder32(A, B, Cin, Add_Carry, Add_Overflow, Add_Sign, Add_Result, Zero);
	parameter n = 32;
	input [n-1:0] A;
	input [n-1:0] B;
	output Add_Carry, Add_Overflow, Add_Sign, Zero;
	output[n-1:0] Add_Result;
	
	reg cout;
	begin
		assign {cout, Add_Result} = A + B + Cin;
		assign Add_Carry = ~(cout ^ cin); 
		assign Add_Overflow = cout ^ Add_Result[n-1]; // maybe wrong for sub
		assign Add_Sign = Add_Result[n-1];
		/*
		if(Add_Result == 32'b0)
			assign Zero = 1;
		else
			assign Zero = 0;
		*/
		assign Zero = ~(| Add_Result);
	end
endmudule