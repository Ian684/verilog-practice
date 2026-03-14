module test_assign_1 (
    input B,
    input C,
    input D,
    output A
);

wire w1 , w2;

assign w1 = B | C;
assign w2 = C & D;
assign A = w1 ^ w2;
endmodule