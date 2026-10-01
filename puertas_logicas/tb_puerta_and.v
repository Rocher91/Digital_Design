`timescale 1ns / 1ps

module tb_puerta_and;

    reg A;
    reg B;
    wire Y;

    puerta_and dut(

        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
    
        $dumpfile("tb_puerta_and.vcd");
        $dumpvars(0,tb_puerta_and);

        A = 0;
        B = 0;
        #10;

        A = 0;
        B = 1;
        #10;

        A = 1;
        B = 0;
        #10;

        A = 1;
        B = 1;
        #10;

        $finish;

    end

endmodule