`include "./lib.v" 

module CLA (
	input [3:0] BL,
	input [3:0] BLB, 
	input CIN, 
	output [3:0] SUM,
	output COUT);

	wire or1_out, or2_out, or3_out, or4_out, inv1_out, inv2_out, inv3_out, inv4_out, and1_out, and2_out, and3_out, and4_out, cout0, cout1; 

	OR2 or2_0 (or1_out, BL[0], BLB[0]);
	INV inv_0 (inv1_out, or1_out);
	XOR2 xor2_0 (SUM[0], inv1_out, CIN);
	AND2 and2_0 (and1_out, inv1_out, CIN);
	OR2 or2_00 (cout0, BL[0], and1_out); 

	OR2 or2_1 (or2_out, BL[1], BLB[1]);
	INV inv_1 (inv2_out, or2_out);
	XOR2 xor2_1 (SUM[1], inv2_out, cout0);
	AND2 and2_1 (and2_out, inv2_out, cout0);
  OR2 or2_11 (cout1, BL[1], and2_out); 

	OR2 or2_2 (or3_out, BL[2], BLB[2]);
	INV inv_2 (inv3_out, or3_out);
	XOR2 xor2_2 (SUM[2], inv3_out, cout1);
	AND2 and2_2 (and3_out, inv3_out, cout1);
	OR2 or2_22 (cout2, BL[2], and3_out); 

    OR2 or2_3 (or4_out, BL[3], BLB[3]);
	INV inv_3 (inv4_out, or4_out);
    XOR2 xor2_3 (SUM[3], inv4_out, cout2);
	AND2 and2_3 (and4_out, inv4_out, cout2);
    OR2 or2_33 (COUT, BL[3], and4_out); 

endmodule 