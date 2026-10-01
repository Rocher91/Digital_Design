// Define la unidad de tiempo de la simulación.
//
// 1ns  -> la unidad principal es 1 nanosegundo.
// 1ps  -> la precisión de la simulación es 1 picosegundo.
//
// Por tanto:
// #10 significa esperar 10 ns.
`timescale 1ns / 1ps

// Creamos el módulo del testbench.
// No tiene entradas ni salidas externas porque solo sirve para simular.
module tb_puerta_not;

   // Declaramos A como reg.
   //
   // Esto nos permite darle valores desde bloques como "initial".
   // En este testbench nosotros controlamos A.
   reg A;

   // Declaramos Y como wire.
   //
   // Nosotros NO controlamos Y directamente.
   // Y será conducida por la salida de nuestra puerta NOT.
   wire Y;

   // Creamos una instancia del módulo puerta_not.
   //
   // puerta_not = nombre del módulo que hemos diseñado.
   // dut        = nombre que damos a esta instancia.
   //
   // DUT suele significar:
   // Design Under Test
   //
   // Es decir: "el diseño que estamos probando".
   puerta_not dut (
       // Conecta el puerto A de puerta_not
       // con la señal A del testbench.
       .A(A),
       // Conecta el puerto Y de puerta_not
       // con la señal Y del testbench.
       .Y(Y)
   );

   // initial crea un bloque que comienza
   // una sola vez al inicio de la simulación.
   initial begin

       // Indica el nombre del archivo VCD
       // donde se guardarán las formas de onda.
       $dumpfile("puerta_not.vcd");

       // Indica qué señales queremos guardar.
       //
       // El 0 hace que se incluya la jerarquía
       // situada por debajo de tb_puerta_not.
       $dumpvars(0, tb_puerta_not);

       // En el instante inicial:
       // ponemos la entrada A a 0.
       A = 0;

       // Esperamos 10 unidades de tiempo.
       //
       // Como hemos puesto:
       // `timescale 1ns / 1ps
       //
       // esto significa esperar 10 ns.
       #10;

       // Ahora cambiamos A a 1.
       A = 1;

       // Esperamos otros 10 ns.
       #10;

       // Volvemos a poner A a 0.
       A = 0;

       // Esperamos otros 10 ns.
       #10;

       // Ponemos A otra vez a 1.
       A = 1;

       // Esperamos otros 10 ns.
       #10;

       // Terminamos la simulación.
       $finish;
   // Fin del bloque initial.
   end

// Fin del módulo del testbench.
endmodule