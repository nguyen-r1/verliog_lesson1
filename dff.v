// time measurement unit 1 nsec with 100 ps precision
`timescale 1ns/100ps

// Design of positive edge D Flip Flop
// Author:
// Updated:

// input/output of module
module RisingEdge_FlipFlop(
  input wire clk, d,   //input
  output reg q         //output in a store
);
  
  reg [1:0] i;
  
  // body of our design
  always @(posedge clk) // executes at every clock rising edge
    begin
      q <= d + i[0];    // aync - make an assignment
      i <= i + 1;
    end
  
endmodule