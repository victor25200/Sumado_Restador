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
  Sumador_Restador dut (
     .inb_3(inputs[8]), .inb_2(inputs[7]), .inb_1(inputs[6]), .inb_0(inputs[5]), .ina_3(inputs[4]), .ina_2(inputs[3]), .ina_1(inputs[2]), .ina_0(inputs[1]), .inci_0(inputs[0]), 
     .outs_4(outs[4]), .outs_3(outs[3]), .outs_2(outs[2]), .outs_1(outs[1]), .outs_0(outs[0]) 
  
  
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
