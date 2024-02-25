module ringcounter(clk,q,reset);
   input clk,reset;
   output reg [3:0]q;
   
   always@(posedge clk or posedge reset)
   if(reset)
      begin
      q<=4'b0001;
      end
   else
      begin
      q[3]<=q[0];
      q[2]<=q[3];
      q[1]<=q[2];
      q[0]<=q[1];
      end
          
endmodule
