`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 10:49:31 AM
// Design Name: 
// Module Name: alu_4bit
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


module alu_4bit(
        input logic [1:0] alu_op,
        input logic [3:0] a,
        input logic [3:0] b,
        output logic [3:0] alu_out,
        output logic c_out
    );
    logic [3:0] add_sub_out, shift_out, and_out, mux1;
    
    // Instantiate adder_subtractor_4bit
    adder_subtractor_4bit u1(
    .M(alu_op[0]), 
    .Cout(c_out), 
    .S0(add_sub_out[0]), .S1(add_sub_out[1]), .S2(add_sub_out[2]), .S3(add_sub_out[3]), 
    .A0(a[0]), .A1(a[1]), .A2(a[2]), .A3(a[3]), 
    .B0(b[0]), .B1(b[1]), .B2(b[2]), .B3(b[3])
    );
    
    assign shift_out = a << b;
    assign and_out = a & b;
    
    assign mux1 =  (alu_op[0]) ? and_out : shift_out;
    assign alu_out = (alu_op[1]) ? mux1 : add_sub_out;
    
endmodule
