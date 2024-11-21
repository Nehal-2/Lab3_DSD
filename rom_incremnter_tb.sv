`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 03:34:12 PM
// Design Name: 
// Module Name: rom_incremnter_tb
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


module rom_incremnter_tb;

logic [3:0] I;
logic [3:0] O;

rom_incrementer dut(
        .I(I),
        .O(O)
    );
    
    initial begin
    
        I = 4'b0000; #10; //0
        $display("Input: %b| Output: %b -> 0001", I, O);

        I = 4'b0001; #10; //1
        $display("Input: %b| Output: %b ->  0010", I, O);
        
        I = 4'b0010; #10; //2
        $display("Input: %b| Output: %b -> 0011", I, O);
        
        I = 4'b0011; #10; //3
        $display("Input: %b| Output: %b ->  0100", I, O);

        I = 4'b0101; #10; // 5
        $display("Input: %b| Output: %b -> 0110", I, O);
        
        I = 4'b1001; #10; // 9
        $display("Input: %b| Output: %b ->  1010", I, O);
        
        I = 4'b1011; #10; // 11
        $display("Input: %b| Output: %b -> 1100", I, O);

        I = 4'b1101; #10; // 13
        $display("Input: %b| Output: %b ->  1110", I, O);
        
        I = 4'b1111; #10; // 15
        $display("Input: %b| Output: %b ->  0000", I, O);
       
        
   $display("Finish TestBench.");
    $finish;
    end 
endmodule
