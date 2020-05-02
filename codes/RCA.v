module RCA (

	input BL, BLB, CIN,
	output SUM, COUT
);

wire SUM;
wire COUT;
wire net1, net2, net3; 

OR2		or1 	(net1, BL, BLB);
INV		inv1	(net2, net1);
XOR2	xor1	(SUM, net2, CIN);
AND2	and1	(net3, net2, CIN);
OR2 	or2		(COUT, net3, BL);

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
