`timescale 1 ns / 1 ps
module alu
(
	input logic [31:0] A, //operande 1 on 32 bits
	input logic [31:0] B, //operande B on 32 bits
	input logic [3:0] opcode, //opcode risc-V RV32I on 4 bits
	output logic [31:0] Y, // exit ALU on 32 bits*
	output logic [3:0] status // status : carry, zero, overflow, negative on 4 bits
)
