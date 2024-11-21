`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 02:29:37 PM
// Design Name: 
// Module Name: rom_incrementer
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


module rom_incrementer(


 input logic [3:0] I,     
 output logic [3:0] O
   

    );
    
always_comb begin
        case (I)
            4'b0000: O = 4'b0001; // 0 -> 1
            4'b0001: O = 4'b0010; // 1 -> 2
            4'b0010: O = 4'b0011; // 2 -> 3
            4'b0011: O = 4'b0100; // 3 -> 4
            4'b0100: O = 4'b0101; // 4 -> 5
            4'b0101: O = 4'b0110; // 5 -> 6
            4'b0110: O = 4'b0111; // 6 -> 7
            4'b0111: O = 4'b1000; // 7 -> 8
            4'b1000: O = 4'b1001; // 8 -> 9
            4'b1001: O = 4'b1010; // 9 -> 10
            4'b1010: O = 4'b1011; // 10 -> 11
            4'b1011: O = 4'b1100; // 11 -> 12
            4'b1100: O = 4'b1101; // 12 -> 13
            4'b1101: O = 4'b1110; // 13 -> 14
            4'b1110: O = 4'b1111; // 14 ->  15
            4'b1111: O = 4'b0000; // 15 -> 16
            default: O = 4'b0000; // 
        endcase
    end
            
endmodule
