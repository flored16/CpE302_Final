	module slowClkHz(input logic clk, reset,
					output logic clk24Hzout);
	
	logic [23:0] cnt; // figure out the width of the counter
	
	always_ff @ (posedge clk) begin
		if(reset) cnt <= 24'd0;
		else cnt <= cnt + 24'd8;
		
	end
	
	assign clk24Hzout = cnt[23]; // msb is the 1 Hz clock
	endmodule