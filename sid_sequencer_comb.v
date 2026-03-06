`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:21:04 10/06/2013 
// Design Name: 
// Module Name:    tb_comb 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sid_sequencer_comb(
    input [2:0] state,
    input odd,
    output [2:0] next_state,
    output [3:0] Dout
    );




//  state    	     odd|  next_s      | 	 Dout
//----|-----------|----|----|---------|-----|---------------------
	




	assign next_state[2] = (~state[2]&&state[1]&&state[0])||(state[2]&&~state[1]&&~state[0]);
	
	assign next_state[1] = (~state[2]&&~state[1]&&state[0]&&~odd)||(~state[2]&&~state[1]&&state[0]&&odd)||(~state[2]&&state[1]&&~state[0]&&odd);
	
	assign next_state[0] = (~state[2]&&~state[1]&&~state[0]&&~odd)||(~state[2]&&~state[1]&&~state[0]&&odd)||(~state[2]&&state[1]&&~state[0]&&odd)||(state[2]&&~state[1]&&~state[0]);
	
	assign Dout[3] = (~state[2]&&~state[1]&&~state[0]&&odd)||(~state[2]&&state[1]&&state[0])||(state[2]&&~state[1]&&~state[0]);
	
	assign Dout[2] = (~state[2]&&~state[1]&&state[0]&&~odd)||(~state[2]&&state[1]&&~state[0]&&~odd)||(~state[2]&&state[1]&&~state[0]&&odd)||(state[2]&&~state[1]&&state[0]);
	
	assign Dout[1] = (~state[2]&&~state[1]&&state[0]&&odd)||(~state[2]&&state[1]&&~state[0]&&~odd)||(~state[2]&&state[1]&&~state[0]&&odd);
	
	assign Dout[0] = (~state[2]&&~state[1]&&~state[0]&&odd)||(~state[2]&&~state[1]&&state[0]&&odd)||(~state[2]&&state[1]&&~state[0]&&odd)||(~state[2]&&state[1]&&state[0])||(state[2]&&~state[1]&&~state[0])||(state[2]&&~state[1]&&state[0]);
	
endmodule
