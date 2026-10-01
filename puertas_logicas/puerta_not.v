// Define un módulo llamado puerta_not.
// Un módulo es un bloque de hardware.
module puerta_not (
   // Entrada del módulo llamada A.
   // wire indica que A representa una conexión o señal.
   input wire A,
   // Salida del módulo llamada Y.
   // También es una señal tipo wire.
   output wire Y
);
   // Asignación continua.
   // Y siempre toma el valor contrario de A.
   // ~ es el operador NOT en Verilog.
   assign Y = ~A;
   // Fin del módulo.
endmodule