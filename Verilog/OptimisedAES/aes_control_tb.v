`timescale 1ns/1ps

module aes_control_tb;
    reg rst;
    reg clk;
    reg [7:0] input_key;

    parameter kin = 128'hAA37C40FD7AF4E231219DFB1377E0D7C;

    aes_control test (rst, clk, input_key);

    always #10 begin
        clk = !clk;
    end
    
    initial begin
        
        rst = 1'b1;
        clk = 1'b1;
        
        #20
        rst = 1'b0;
        input_key = kin[127:120];

        #20
        input_key = kin[119:112];

        #20
        input_key = kin[111:104];

        #20
        input_key = kin[103:96];

        #20
        input_key = kin[95:88];

        #20
        input_key = kin[87:80];

        #20
        input_key = kin[79:72];

        #20
        input_key = kin[71:64];

        #20
        input_key = kin[63:56];
        
        #20
        input_key = kin[55:48];
        
        #20
        input_key = kin[47:40];

        #20
        input_key = kin[39:32];

        #20
        input_key = kin[31:24];

        #20
        input_key = kin[23:16];

        #20
        input_key = kin[15:8];

        #20
        input_key = kin[7:0];
    end
endmodule