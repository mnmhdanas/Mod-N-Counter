
module modNctrtb();
  reg clk,rst;
  parameter N = 16; // modulus value
  parameter width = $clog2(N); // calculation of bit size to accomodate count value
  wire [width-1:0]count;
  
  modNctr dut(clk,rst,count); 
  
  initial 
    begin
      clk = 1;
      forever #5 clk = ~clk;
    end
  
  initial 
    begin
      $dumpfile("modNctrtb.vcd");
      $dumpvars(0,modNctrtb);
      #500 $finish;
    end
  
  initial
    begin
      rst=1;
      #10 rst =0;
      #60 rst=1;
      #10 rst=0;
      #180 rst =1;
      #10 rst=0;
    end
endmodule
