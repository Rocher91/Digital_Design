`timescale 1ns/1ps

module tb;

reg clk;
wire [3:0] q;

contador uut (
    .clk(clk),
    .q(q)
);

initial begin
    clk = 0;
    #100 $finish;
end

always #5 clk = ~clk;

initial begin
    $dumpfile("ondas.vcd");
    $dumpvars(0,tb);
end

endmodule