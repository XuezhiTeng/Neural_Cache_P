`include "./cla.v"

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

endmodule