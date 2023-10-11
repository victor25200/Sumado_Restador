# Sumado_Restador
### Integrantes grupo 4
Victor Sebastian Santiago Acosta.

Daniel Felipe Castro Galindo. 

Nicolas Peña Garzon. 

# Laboratorio 2 eléctronica digital
## sumador

![Imagen de WhatsApp 2023-10-10 a las 22 45 40_55acff10](https://github.com/victor25200/Sumado_Restador/assets/143362267/051b719b-5184-4c5e-93dd-ab97724bb099)

## medio sumador
![med](https://github.com/victor25200/Sumado_Restador/assets/143362267/6d5695f9-185a-4793-b911-a789bf7870ae)
 
## sumador 4bits
![sumador](https://github.com/victor25200/Sumado_Restador/assets/143362267/ac852cce-5fb2-49ce-b6ed-12a6b84f0c1b)


## sumador-restador

![restador](https://github.com/victor25200/Sumado_Restador/assets/143362267/38ac561a-e690-492e-80cc-d03aa8f9cb7f)

module Sumador_Restador (
  // Se declaran las puertas y entradas del sumador restador 
  input inb_3, inb_2, inb_1, inb_0,ina_3, ina_2, ina_1, ina_0, inci_0, 
  output outs_4, outs_3, outs_2, outs_1, outs_0 
);


// Se declaran los cables que se van a utilizar 
wire xor_to_inb_3; 
wire xor_to_inb_2; 
wire xor_to_inb_1; 
wire xor_to_inb_0; 


// Declaración de submodules
// Se utiliza un Sumador de 4 bits y se conecta sus entradas y salidas segun corresponda l
//Sumador_4bits (inb3, inb2, inb1, inb0,ina3, ina2, ina1, ina0, 
