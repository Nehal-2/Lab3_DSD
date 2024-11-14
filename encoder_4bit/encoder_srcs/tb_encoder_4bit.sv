`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 04:26:06 PM
// Design Name: 
// Module Name: tb_encoder_4bit
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


module tb_encoder_4bit;
    logic [3:0] window;
    logic [7:0] SW;
    logic [2:0] index;
    
    encoder_4bit dut (
        .SW(SW),
        .window(window),
        .index(index)
    );
    initial begin
    // Display header for results with fixed spacing
    $display("Time   |   Input    |    Window   |   Index");
    $display("--------------------------------------------------------------");

    // Test case 1:
    SW = 8'b0000_0000; window = 4'b1001; #10;
    $display("%0t   |  %08b   |  %04b   |   %03b", $time, SW, window, index);

    // Test case 2:
    SW = 8'b0000_1000; window = 4'b1001; #10;
    $display("%0t   |  %08b   |  %04b   |   %03b", $time, SW, window, index);
    
    // Test case 3:
    SW = 8'b0000_1001; window = 4'b1001; #10;
    $display("%0t   |  %08b   |  %04b   |   %03b", $time, SW, window, index);
    
    // Test case 4:
    SW = 8'b0001_0010; window = 4'b1001; #10;
    $display("%0t   |  %08b   |  %04b   |   %03b", $time, SW, window, index);
    
    // Test case 5:
    SW = 8'b0010_0100; window = 4'b1001; #10;
    $display("%0t   |  %08b   |  %04b   |   %03b", $time, SW, window, index);
    
    // Test case 6:
    SW = 8'b0100_1000; window = 4'b1001; #10;
    $display("%0t   |  %08b   |  %04b   |   %03b", $time, SW, window, index);
    
    // Test case 7:
    SW = 8'b1001_0000; window = 4'b1001; #10;
    $display("%0t   |  %08b   |  %04b   |   %03b", $time, SW, window, index);

    // End simulation
            $finish;
    end
    
endmodule