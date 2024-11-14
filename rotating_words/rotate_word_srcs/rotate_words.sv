`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 02:28:40 PM
// Design Name: 
// Module Name: rotate_words
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


module rotate_words(
        input logic [1:0] SW,
        output logic [15:0] word
    );
    
    always@(SW)
    begin
        case(SW)
        2'b00: word = 16'hC0DE;
        2'b01: word = 16'hEC0D;
        2'b10: word = 16'hDEC0;
        2'b11: word = 16'h0DEC;
        endcase
    end
             
endmodule
