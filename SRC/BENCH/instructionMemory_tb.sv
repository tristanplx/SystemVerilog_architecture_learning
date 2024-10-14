`timescale 1 ns / 1 ps
module instructionMemory_tb;
    // Inputs
    logic [31:0] address;
    // Outputs
    logic [31:0] instruction;
    // Instantiate the Unit Under Test (UUT)
    instructionMemory uut (
        .address(address),
        .instruction(instruction)
    );
    // Initialize Inputs
    initial begin
        // Initialize Inputs
        address = 0;
        // Wait 100 ns for global reset to finish
        #100;
        // putting some values in the memory to test
        uut.mem[0] = 32'h12345678;
        uut.mem[1] = 32'h9ABCDEF0;
        uut.mem[3] = 32'hCAFEBABE;
        // test case 1 : address = 0
        address = 32'h00000000;
        #100;
        // test case 2 : address = 4
        address = 32'h00000004;
        #100;
        // test case 3 : address = 8
        address = 32'h00000008;
        #100;
        // test case 4 : address = 12
        address = 32'h0000000C;
        #100;

        // end simulation
        $finish;
    end 
endmodule