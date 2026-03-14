`timescale 1ns/1ps // 時間單位/精準度

module counter_tb;

    // 定義輸入為 reg，輸出為 wire
    reg        clk;
    reg        rst_n;
    wire [7:0] out;

    // 載入剛才寫的 counter 模組 (D.U.T: Device Under Test)
    counter uut (
        .clk(clk),
        .rst_n(rst_n),
        .out(out)
    );

    // 產生時鐘訊號：每 5ns 翻轉一次，所以週期是 10ns (100MHz)
    always #5 clk = ~clk;

    initial begin
        // 1. 設定產出波形檔，給 GTKWave 看
        $dumpfile("counter_test.vcd");
        $dumpvars(0, counter_tb);

        // 2. 初始化訊號
        clk = 0;
        rst_n = 0;      // 一開始先重置
        #20 rst_n = 1;  // 過 20ns 後放開重置，讓它開始跑

        // 3. 跑一段時間後停止
        #200 $finish;
    end

endmodule