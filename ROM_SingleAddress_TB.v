`timescale 1ns / 1ps
`define clkperiodby2 5 // Specify the frequency of operation as 100 MHz.
module ROM_SingleAddress_TB(d);
output [7:0] d ;
reg clk ;
reg [5:0] a ; 
integer count;
ROM_SingleAddress rom1( 
    .clk(clk),
    .a(a),
    .d(d) 
     );
    
always #`clkperiodby2 clk <= ~clk ; // Generate 100 MHz clock.
 
initial
begin
 clk = 1'b0 ;
#7 a = 0 ; 
for (count = 0; count < 64; count = count+1) // count = 0-63.
#10 a = count ; // Apply new address every 10 ns a = 0-63.
#200
$stop ;
end
endmodule