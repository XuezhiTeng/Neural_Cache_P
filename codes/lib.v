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