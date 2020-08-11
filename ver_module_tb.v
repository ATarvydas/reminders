`timescale 1ns / 1ns
`include "ver_module.v"

module ver_module_tb;

   reg A;  //Reg for inputs
   wire B; //Wire for outputs

   buffer uut(A,B); //Unit Under Test

   initial begin

      $dumpfile("hello_tb.vcd");
      $dumpvars(0,ver_module_tb);

      A = 0;
      #20;

      A = 1;
      #20;

      A = 0;
      #20;

      $display("Test complete");
      
   end

endmodule
