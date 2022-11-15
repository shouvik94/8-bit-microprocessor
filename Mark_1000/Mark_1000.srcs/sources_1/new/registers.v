`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 11:24:20 PM
// Design Name: 
// Module Name: registers
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


module registers(
input [1:0] addr,
input [7:0] data


    );
    
    reg [7:0] rA;
    reg [7:0] rB;
    reg [7:0] rC;
    reg [7:0] rD;
    
    always @(*)
        begin
        case(addr)
            2'b00:rA=data;
            2'b01:rB=data;
            2'b10:rC=data;
            2'b11:rD=data;
        endcase
        end
endmodule
