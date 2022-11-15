`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 07:33:22 PM
// Design Name: 
// Module Name: memoryBank
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


module Memory(
  input [7:0]address,bus_1,
  input write,
  output reg [7:0]mem_word);
  reg [7:0]mem[0:255];
  always@(*)
  begin
    if(write)
      mem[address]=bus_1;
    else
      mem_word=mem[address];
  end
endmodule