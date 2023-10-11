module Sumador_4bits (
  input inb3, inb2, inb1, inb0,ina3, ina2, ina1, ina0, inci0, 
  output outs4, outs3, outs2, outs1, outs0 
 );
  // Declaración de señales
wire co0_to_ci1; // Un cable del cout del sumador 1 al cin del sumador2
wire co1_to_ci2; // Un cable del cout del sumador 2 al cin del sumador3
wire co2_to_ci3; // Un cable del cout del sumador 3 al cin del sumador4

// Declaración de submodules
// fulladder(in_b, in_a, in_ci,out_co, out_s)
fulladder fulladder1(inb0, ina0,   inci0,       co0_to_ci1,  outs0);
fulladder fulladder2(inb1, ina1,   co0_to_ci1,  co1_to_ci2,  outs1);
fulladder fulladder3(inb2, ina2,   co1_to_ci2,  co2_to_ci3,  outs2);
fulladder fulladder4(inb3, ina3,   co2_to_ci3,  outs4,       outs3);

endmodule
