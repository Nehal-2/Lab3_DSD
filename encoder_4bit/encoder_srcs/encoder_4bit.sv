`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 04:00:51 PM
// Design Name: 
// Module Name: encoder_4bit
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


module encoder_4bit(
        input logic [3:0] window,
        input logic [7:0] SW,
        output logic [2:0] index

    );
    
    always@(*)
    begin
        if (SW[3:0] == window)
            index = 3'b000;
        else if (SW[4:1] == window)
            index = 3'b001;
        else if (SW[5:2] == window)
            index = 3'b010;
        else if (SW[6:3] == window)
            index = 3'b011;
        else if (SW[7:4] == window)
            index = 3'b100;
        else
            index = 3'b111;
        end
endmodule
