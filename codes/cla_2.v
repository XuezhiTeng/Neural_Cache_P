
module CLA2 (
	input [3:0] BL,
	input [3:0] BLB, 
	input CIN, 
	output [3:0] SUM,
	output COUT);

	wire or1_out, or2_out, or3_out, or4_out, inv1_out, inv2_out, inv3_out, inv4_out, and1_out, and2_out, and3_out, and4_out, cout0, cout1; 

	
  	INV inv_0 (inv1_out, BLB[0]);
  XOR3 xor3_0 (SUM[0], inv1_out, CIN, BL[0]);
	AND2 and2_0 (and1_out, inv1_out, CIN);
	OR2 or2_00 (cout0, BL[0], and1_out); 


  	INV inv_1 (inv2_out, BLB[1]);
  XOR3 xor3_1 (SUM[1], inv2_out, cout0, BL[1]);
	AND2 and2_1 (and2_out, inv2_out, cout0);
  	OR2 or2_11 (cout1, BL[1], and2_out); 

		
  	INV inv_2 (inv3_out, BLB[2]);
  XOR3 xor3_2 (SUM[2], inv3_out, cout1, BL[2]);
	AND2 and2_2 (and3_out, inv3_out, cout1);
	OR2 or2_22 (cout2, BL[2], and3_out); 


  	INV inv_3 (inv4_out, BLB[3]);
  XOR3 xor3_3 (SUM[3], inv4_out, cout2, BL[3]);
	AND2 and2_3 (and4_out, inv4_out, cout2);
    OR2 or2_33 (COUT, BL[3], and4_out); 

endmodule 

module AND2(output A, input B, input C); 
    assign A = B & C;
endmodule

module INV(output A, input B);
    assign A = !B;
endmodule

module OR2(output A, input B, input C);
    assign A = B | C;
endmodule

module XOR2(output A, input B, input C);
    assign A = B ^ C;
endmodule

module XOR3(output A, input B, input C, input D);
    assign A = B ^ C ^ D;
endmodule

/*`include "./cla.v"

module CLA_WRAPPER (

	input [3:0] A,
	input [3:0] B,
	input CIN,
	output [3:0] SUM,
	output  COUT
	
);
wire [3:0] BL;
wire [3:0] BLB;


assign BL = A & B;
assign BLB = ~(A | B);

CLA cla0 ( .CIN(CIN), .BL(BL), .BLB(BLB), .SUM(SUM), .COUT(COUT));

endmodule*/