module testbech;

  reg [2:0] inputs;
  /* inputs[0] inputs[1] inputs[2] */
  integer i;
  initial
  begin
    for (i=0; i<8; i=i+1)
    begin
      inputs = i;
      #1;
    end
  end
  /* // RESULT FOR DEVICE/DESIGN UNDER TEST */
  wire [1:0] outs;
  // DEVICE/DESIGN UNDER TEST
  fulladder dut (
    .in_b(inputs[2]), .in_a(inputs[1]), .in_ci(inputs[0]),
    .out_co(outs[1]), .out_s(outs[0])
  );

  // WAVES IN VCD TO OPEN IN GTKWAVE
  initial
  begin
    $dumpfile("top.vcd");
    $dumpvars(0, testbech);
  end


endmodule
