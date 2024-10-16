`timescale 1 ns / 1 ps
module mux_tb;

    // Signaux de test
    logic [31:0] in0, in1;  // Entrées du MUX
    logic sel;              // Signal de sélection
    logic [31:0] out;       // Sortie du MUX

    // Instanciation du MUX
    mux uut (
        .in0(in0),
        .in1(in1),
        .sel(sel),
        .out(out)
    );

    // Bloc initial pour générer les stimuli
    initial begin
        // Initialisation des entrées
        in0 = 32'hAAAAAAAA;  // initial value 0
        in1 = 32'h55555555;  // initial value 1
        sel = 1'b0;          // choose in0
        #10;                 // wait 10 time units

        sel = 1'b1;          // choose in1
        #10;                 // wait 10 time units

        in0 = 32'h12345678;
        in1 = 32'h87654321;
        sel = 1'b0;          // choose in0
        #10;

        sel = 1'b1;          // choose in1
        #10;

        // end simulation
        $finish;
    end

endmodule
