module LATCH (S,R,Q,QB); 

	input S, R; 
	output Q,QB; 

	nor2 nor_1 (Q, R, QB);
	nor2 nor_2 (QB, S, Q);

endmodule 

module nor2 (output A, input B, input C);
    assign A = ~(B | C);
endmodule