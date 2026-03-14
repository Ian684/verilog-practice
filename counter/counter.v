module counter (
    input  wire       clk,   // 時脈訊號
    input  wire       rst_n, // 低電位重置訊號 (Reset Active Low)
    output reg [7:0]  out    // 8 位元輸出 (0~255)
);

    // 順序邏輯：在時鐘上升緣觸發
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            out <= 8'd0;     // 如果重置，歸零
        end else begin
            out <= out + 1'b1; // 否則每個時鐘週期加 1
        end
    end

endmodule 