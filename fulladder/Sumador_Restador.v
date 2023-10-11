module Sumador_Restador (
  // Inputs and output ports; 3 in, 2 out
  input inb_3, inb_2, inb_1, inb_0,ina_3, ina_2, ina_1, ina_0, inci_0, 
  output outs_4, outs_3, outs_2, outs_1, outs_0 
);
wire xor_to_inb_3; 
wire xor_to_inb_2; 
wire xor_to_inb_1; 
wire xor_to_inb_0; 

// Declaración de submodules
//Sumador_4bits (inb3, inb2, inb1, inb0,ina3, ina2, ina1, ina0, inci0,outs4, outs3, outs2, outs1, outs0 )
Sumador_4bits Sumador_4bits1 (xor_to_inb_3, xor_to_inb_2, xor_to_inb_1, xor_to_inb_0,ina_3, ina_2, ina_1, ina_0,inci_0, outs_4, outs_3, outs_2, outs_1, outs_0);

// Descripción del comportamiento
assign xor_to_inb_3 = inci_0^inb_3;
assign xor_to_inb_2 = inci_0^inb_2;
assign xor_to_inb_1 = inci_0^inb_1;
assign xor_to_inb_0 = inci_0^inb_0;

endmodule
