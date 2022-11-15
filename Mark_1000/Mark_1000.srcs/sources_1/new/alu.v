`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 312Microprocessors
// Engineer: Shubhradeep Das
// 
// Create Date: 11/14/2022 12:31:39 AM
// Design Name: Mark_1000_ALU
// Module Name: alu
// Project Name: Mark_1000
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


module alu #(parameter W=8,MEM_SIZE=8)(
    input   [3:0]     opcode,
    input  [W-1:0]   operand_A,
    input  [W-1:0]   operand_B,
    input   [MEM_SIZE-1:0]  memory_address,
    output reg  [W-1:0] result,
    output      [2:0]   flag           //sign,zero,carry         
    );
    
    reg N,Z,C;                        //flags
    reg [8:0] carry_check;
    
    always  @(*)
        begin
            case(opcode)

                4'b0000:    result=operand_A;
                4'b0001:    result=operand_A;
                4'b0011:    result=operand_A;
                4'b0010:    result=operand_A;
                4'b0100:    
                            begin
                            result=operand_A+operand_B;
                            carry_check = operand_A+operand_B;
                            C=carry_check[8];
                            end
                4'b1100:    begin
                            result=operand_A+operand_B;
                            carry_check=operand_A+operand_B;
                            C=carry_check[8];
                            end
                4'b0101:    
                            begin
                            result=operand_A-operand_B;
                            if (operand_A<operand_B)
                                N=1;
                            end
                4'b1101:    begin
                            result=operand_A-operand_B;
                            if (operand_A<operand_B)
                                N=1;
                            end
                4'b0111:    if(operand_A<operand_B)
                            begin
                                C=1;
                                Z=0;
                            end
                            else if(operand_A==operand_B)
                            begin
                                C=0;
                                Z=1;
                            end
                            else if(operand_A>operand_B)
                            begin
                                C=0;
                                Z=0;
                            end
                            
                4'b1111:    if(operand_A<operand_B)
                            begin
                                C=1;
                                Z=0;
                            end
                            else if(operand_A==operand_B)
                            begin
                                C=0;
                                Z=1;
                            end
                            else if(operand_A>operand_B)
                            begin
                                C=0;
                                Z=0;
                            end
                            
                4'b0110:    result=operand_A & operand_B;
                4'b1110:    result=operand_A & operand_B;
                4'b1000:    result=operand_A | operand_B;
                4'b1001:    result=operand_A | operand_B;
                4'b1010:    result=operand_A ^ operand_B;
                4'b1011:    result=operand_A ^ operand_B;
            endcase
      end
      
      assign flags={N,Z,C};
        
endmodule
