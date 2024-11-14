`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 02:42:34 PM
// Design Name: 
// Module Name: tb_rotating_words
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


module tb_rotating_words;
    logic [1:0] SW;
    logic [15:0] word;
    
    rotate_words dut (
        .SW(SW),
        .word(word)
    );
    initial begin
    // Display header for results with fixed spacing
    $display("Time   |   SW    |    Output");
    $display("--------------------------------------------------------------");

    // Test case 1: 2'b00
    SW = 2'b00; #10;
    $display("%0t   |  %b   |  %04h", $time, SW, word);

    // Test case 2: 2'b01 
    SW = 2'b01; #10;
    $display("%0t   |  %b   |  %04h", $time, SW, word);

    // Test case 3: 2'b10
    SW = 2'b10; #10;
    $display("%0t   |  %b   |  %04h", $time, SW, word);

    // Test case 4: AND 2'b11
    SW = 2'b11; #10;
    $display("%0t   |  %b   |  %04h", $time, SW, word);

    // End simulation
            $finish;
    end
endmodule

