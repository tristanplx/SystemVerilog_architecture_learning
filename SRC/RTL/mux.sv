`timescale 1 ns / 1 ps
module mux(
    input logic [31:0] in0, in1, //input on 32 bits
    input logic sel, 
    output logic [31:0] out // exit mux on 32 bits
);
    // MUX logic
    always_comb begin
        case(sel)
            1'b0: out = in0;
            1'b1: out = in1;
            default: out = 32'b0;
        endcase
    end
endmodule