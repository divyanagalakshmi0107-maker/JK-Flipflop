`timescale 1ns/1ps

module jk_flipflop_tb;

    reg clk;
    reg j;
    reg k;

    wire q;
    wire q_bar;

    jk_flipflop uut (
        .clk(clk),
        .j(j),
        .k(k),
        .q(q),
        .q_bar(q_bar)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test inputs
    initial begin

        $dumpfile("simulation/waveform.vcd");
        $dumpvars(0, jk_flipflop_tb);

        j = 0;
        k = 0;

        #10;

        j = 0;
        k = 1;

        #10;

        j = 1;
        k = 0;

        #10;

        j = 1;
        k = 1;

        #10;

        j = 1;
        k = 1;

        #10;

        j = 0;
        k = 0;

        #10;

        $finish;
    end

    // Display simulation values
    initial begin
        $monitor("Time=%0t | CLK=%b | J=%b | K=%b | Q=%b | Q_bar=%b",
                 $time, clk, j, k, q, q_bar);
    end

endmodule