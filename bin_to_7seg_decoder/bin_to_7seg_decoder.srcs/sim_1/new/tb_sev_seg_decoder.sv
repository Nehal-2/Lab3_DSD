`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 04:03:33 PM
// Design Name: 
// Module Name: tb_sev_seg_decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_sev_seg_decoder;
// Declare testbench signals
    logic [3:0] a;
    logic [6:0] seg;
// Instantiate the andgate module
    sev_seg_decoder dut (
        .bin(a),
        .seg(seg)
    );
    // Testbench logic
    initial begin
            // Display header
            $display("Time\t Input\t Seg");
            $display("-------------------------------------------");
            // Apply test vectors with $display statements
            a = 4'b0000; #10;
            $display("%0t\t %b\t %b", $time, a, seg);
            a = 4'b0001; #10;
            $display("%0t\t %b\t %b", $time, a, seg);
            a = 4'b0010; #10;
            $display("%0t\t %b\t %b", $time, a, seg);
            a = 4'b0011; #10;
            $display("%0t\t %b\t %b", $time, a, seg);
            a = 4'b0100; #10;
            $display("%0t\t %b\t %b", $time, a, seg);
            a = 4'b0101; #10;
            $display("%0t\t %b\t %b", $time, a, seg);
            a = 4'b0110; #10;
            $display("%0t\t %b\t %b", $time, a, seg);
            a = 4'b0111; #10;
            $display("%0t\t %b\t %b", $time, a, seg);
            a = 4'b1000; #10;
            $display("%0t\t %b\t %b", $time, a, seg);
            a = 4'b1001; #10;
            $display("%0t\t %b\t %b", $time, a, seg);
            a = 4'b1010; #10;
            $display("%0t\t %b\t %b", $time, a, seg);
            a = 4'b1011; #10;
            $display("%0t\t %b\t %b", $time, a, seg);
            a = 4'b1100; #10;
            $display("%0t\t %b\t %b", $time, a, seg);
            a = 4'b1101; #10;
            $display("%0t\t %b\t %b", $time, a, seg);
            a = 4'b1110; #10;
            $display("%0t\t %b\t %b", $time, a, seg);
            a = 4'b1111; #10;
            $display("%0t\t %b\t %b", $time, a, seg);

        // End simulation
            $finish;
    end
endmodule