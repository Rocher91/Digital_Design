module puerta_nand(

    input wire A,
    input wire B,
    output wire Y
);

    assign Y = ~ ( A & B );

endmodule