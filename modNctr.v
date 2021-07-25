
module modNctr (clk,rst,count); 
  input clk,rst;
  output reg [width-1:0] count;
  parameter N = 16;  // Modulus value
  parameter width = $clog2(N);  // calculation of bit size
  
  always @ (posedge clk,posedge rst) 
    begin  
    if (rst)  
      count <= 0;  
    else 
      begin  
        if (count == N-1)  
        count <= 0;  
        else  
        count <= count + 1;  
    end  
  end  
endmodule  
