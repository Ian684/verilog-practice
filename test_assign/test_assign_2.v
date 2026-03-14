module test_assign_2 (
    input clk,
    input [7:0] a,
    input [7:0] b,
    output reg [8:0] c,
    output reg [8:0] d
);

always @(posedge clk) begin
    c <= a + b;
end

always @(*) begin
    d = a + b;
end

endmodule