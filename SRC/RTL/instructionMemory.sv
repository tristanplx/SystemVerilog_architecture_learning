`timescale 1 ns / 1 ps
module instructionMemory(
    input logic [31:0] address, // PC
    output logic [31:0] instruction //fetched instruction
);
    logic [31:0] mem[0:255]; // array to hold instructions (256)

    assign instruction = mem[address >> 2];
endmodule