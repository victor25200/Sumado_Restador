module testbech;

  // STIMULUS
  // reg a = 0, b = 0;
  // initial
  // begin
  //   # 17 a = 1, b = 1;
  //   # 11 a = 1, b = 0;
  //   # 29 a = 1, b = 1;
  //   # 11 a = 1, b = 0;
  //   # 100 $finish(); // [stop(), $finish()]
  // end

  reg [8:0] inputs;
  /* inputs[0] inputs[1] inputs[2] */
  integer i;
  initial
  begin
    for (i=0; i<255; i=i+1)
    begin
      inputs = i;
      #1;
    end
  end

  // CLOCK STIMULUS
  // Make a regular pulsing clock.
  // reg clk = 0;
  // always #5 clk = !clk;

  /* // RESULT FOR DEVICE/DESIGN UNDER TEST */
  wire [4:0] outs;
  // DEVICE/DESIGN UNDER TEST
  Sumador_4bits dut (
     .inb3(inputs[8]), .inb2(inputs[7]), .inb1(inputs[6]), .inb0(inputs[5]), .ina3(inputs[4]), .ina2(inputs[3]), .ina1(inputs[2]), .ina0(inputs[1]), .inci0(inputs[0]), 
     .outs4(outs[4]), .outs3(outs[3]), .outs2(outs[2]), .outs1(outs[1]), .outs0(outs[0]) 
  
  

  );

  /* // MONITOR */
  // initial
  //   $monitor("Time: %t, a = %d, b = %d => out = %d",
  //     $time, a, b, value);

  // WAVES IN VCD TO OPEN IN GTKWAVE
  initial
  begin
    $dumpfile("top.vcd");
    $dumpvars(0, testbech);
  end


endmodule
