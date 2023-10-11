# Sumado_Restador
### Integrantes grupo 4
Victor Sebastian Santiago Acosta.

Daniel Felipe Castro Galindo. 

Nicolas Peña Garzon. 

# Laboratorio 2 eléctronica digital 
las diferentes compuertas se conforman de dos segmentos uno que es el *compuerta.v* en la cual se declaran las variables de entradas y salidas de la compuerta, asi como las conexiones y las subfunciones que van a componer la compuerta y el segunto segmento *compuerta_tb.v* en el cual se define como interactuan estas variables y la logica que va detras para el funcionamiento de la compuerta. 
## sumador
Los sumadores son componentes fundamentales en sistemas digitales y se utilizan para sumar dos o más señales binarias, que generalmente representan números en formato binario. Hay varios tipos de sumadores, pero uno de los más comunes es el sumador binario de 1 bit, también conocido como sumador completo de 1 bit

[Sumador.v](fulladder/fulladder.v) 
[Sumador_tb.v](fulladder/fulladder_tb.v)

![Sumador](https://github.com/victor25200/Sumado_Restador/assets/143362267/051b719b-5184-4c5e-93dd-ab97724bb099)

## medio sumador
[MedioSumador.v](fulladder/halfadder.v)
[MedioSumador_tb.v](https://github.com/victor25200/Sumado_Restador/blob/main/fulladder/fulladder_tb.v)

![Medio Sumador](https://github.com/victor25200/Sumado_Restador/assets/143362267/6d5695f9-185a-4793-b911-a789bf7870ae)
 El medio sumador se utiliza cuando se deben sumar dos bits individuales y no se considera ningún acarreo de entrada desde una etapa anterior. Para sumar números de varios bits, se pueden conectar varios medios sumadores en cascada, utilizando la salida Cout de uno como entrada Cin  para el siguiente. 
## sumador 4bits
Un sumador de 4 bits, también conocido como sumador de 4 bits completo, es un circuito combinacional que suma dos números binarios de 4 bits cada uno y produce una suma de 4 bits y un acarreo de salida. en este caso construimos el sumador de 4 bits a partir de 4 sumadores de 1 bit en cascada , como se muestra en la imagen
[Sumador4bits.v](fulladder/Sumador_4bits.v)
[Sumador4bits_tb.v](fulladder/Sumador_4bits_tb.v)

![Sumador 4 bits](https://github.com/victor25200/Sumado_Restador/assets/143362267/ac852cce-5fb2-49ce-b6ed-12a6b84f0c1b)


## sumador-restador
el sumador restador es opera entre señales logicas y la operacion que haga depende de una señal de control que seleccione esta.
-Cuando la señal de control se establece en modo suma, el circuito opera como un sumador estándar. Suma las entradas A y B y produce el resultado de la suma en la salida de suma.

-Cuando la señal de control se establece en modo resta, el circuito opera como un sumador/restador y realiza una operación de resta. En este caso, la entrada B se invierte (cambian los 0 a 1 y viceversa) y se suma a la entrada A. El resultado de la resta se proporciona en la salida de resta.
[Sumador_Restador.v](fulladder/Sumador_Restador.v)
[Sumador_Restador_tb.v](fulladder/Sumador_Restador_tb.v)
![restador](https://github.com/victor25200/Sumado_Restador/assets/143362267/38ac561a-e690-492e-80cc-d03aa8f9cb7f)
