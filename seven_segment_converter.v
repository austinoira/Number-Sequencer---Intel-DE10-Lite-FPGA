`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Mississippi State University
// Engineer: J. Moorhead
// 
// Create Date:   13:20:00 2/18/2019
// Design Name: 
// Module Name:    seven_segment_converter
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: seven segment display for 2 digits 0-15
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module seven_segment_converter (
    input w,
    input x,
    input y,
    input z,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g	 
  );

// Your task: change 0 to the correct equation for b-g below.
// ----------------------------------------------------------
//  	a = Σm()
	assign a =  ((~w&~x&~y&z) | (~w&x&~y&~z) | (w&~x&y&z) | (w&x&y&~z)); 
//     // b = Σm(5,6,15)
    assign b =  ((~w&x&~y&z) | (w&x&y&z) | (~w&x&y&~z));
//     // c = Σm(2,12)
    assign c =  ((~w&~x&y&~z) | (w&x&~y&~z));
//     // d = m(1,4,7,11,14)
   assign d =  ((~w&~x&~y&z) | (~w&x&~y&~z) | (~w&x&y&z) | (w&x&y&~z) | (w&~x&y&z));
//     // e =  m(1,3,4,5,6,7,9,11,13,14,15)
    assign e = ((z) | (~w&x&~y) | (w&x&y));
//     // f = m(1,2,3,7,11,12,13)
    assign f = ((w&x&~y) | (~w&~x&z) + (~w&~x&y) + (~w&y&z) | (~x&y&z));
//     // g = m(0,1,7,10,11)
   assign g = ((~w&~x&~y) | (~w&x&y&z) | (w&~x&y));

  endmodule
