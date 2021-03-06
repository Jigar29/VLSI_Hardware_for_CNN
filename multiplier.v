module mult16(output[15:0] result, output done, input reset, input clk, input wire[7:0] multiplicand, input wire[7:0] multiplier);
		
	parameter start = 4'b0000, s0 = 4'b0001, s1 = 4'b0010, s2 = 4'b0011, s3 =4'b0100, s4 = 4'b0101, s5 = 4'b0110, s6 = 4'b0111, s7 = 4'b1000, s8 = 4'b1001, s9 = 4'b1010, s10 = 4'b1011, s11= 4'b1100, s12 = 4'b1101, s14 = 4'b1110, stop = 4'b1111;
	parameter BIT_WIDTH = 8; 
	reg[2*BIT_WIDTH -1:0] final_res;
	reg[2*BIT_WIDTH -1:0] temp = 0; 
	reg[2*BIT_WIDTH -1:0] temp1 = 0; 
	reg[2*BIT_WIDTH:0] acc = 0;                              // accumulator deliberately taken big 
	reg[3:0] next_state = start, current_state = start;      // Be careful with the size of this register. 
	wire[2*BIT_WIDTH :0] temp_wire; 

	assign result = final_res;
	assign done = (current_state == stop)? 1'b1: 1'b0;
	
	always @(posedge clk or (reset == 1)) begin
		if(reset) 
			current_state <= start; 
		else begin 
			if(current_state == start) begin 
				temp <= {multiplicand[BIT_WIDTH -1], multiplicand[BIT_WIDTH -1], multiplicand[BIT_WIDTH -1], multiplicand[BIT_WIDTH -1], multiplicand[BIT_WIDTH -1], multiplicand[BIT_WIDTH -1], multiplicand[BIT_WIDTH -1], multiplicand[BIT_WIDTH -1], multiplicand[BIT_WIDTH -1:0]}; 
				current_state <= s0; 
				next_state <= s0; 
				final_res <=0;
				temp1 <=0;
				acc <=0; 
			end
			else begin 
				if((next_state != s0) && (next_state != stop))
				   temp <= {temp[2*BIT_WIDTH -2:0], 1'b0};
				if(next_state == stop) begin
					final_res = acc[2*BIT_WIDTH -1:0]; 
				end
				current_state <= next_state;
			end
		end
	end
	
	always @(*) begin
		case(current_state)
			s0:  begin 
					if(multiplier[0] == 1) begin 
						acc = acc + temp; 
					end 
					next_state = s1; 
				 end 
			s1:  begin 
					if(multiplier[1] == 1) begin 
						acc = acc + temp; 
					end 
					next_state = s2; 
				 end 	
				 
			s2:  begin 
					if(multiplier[2] == 1) begin 
						acc = acc + temp; 
					end 
					next_state = s3; 
				 end 
				 
			s3:  begin 
					if(multiplier[3] == 1) begin 
						acc = acc + temp; 
					end 
					next_state = s4; 
				 end 
				 
			s4:  begin 
					if(multiplier[4] == 1) begin 
						acc = acc + temp; 
					end 
					next_state = s5; 
				 end 		
				 		 
			s5:  begin 
					if(multiplier[5] == 1) begin 
						acc = acc + temp; 
					end 
					next_state = s6; 
				 end 
				 
			s6:  begin 
					if(multiplier[6] == 1) begin 
						acc = acc + temp; 
					end 
					next_state = s7; 
				 end
				 
			s7:  begin 
					if(multiplier[7] == 1) begin 
					  temp1[2*BIT_WIDTH -2:BIT_WIDTH-1] = ~multiplicand[BIT_WIDTH -1:0]; 
						temp1[2*BIT_WIDTH -2:BIT_WIDTH-1] = temp1[2*BIT_WIDTH -2:BIT_WIDTH-1] +1; 
						temp1[2*BIT_WIDTH -1] = temp1[2*BIT_WIDTH -2];
						acc = acc + temp1; 
						
						//Negative Saturation for the accumulator 
						if(multiplicand[BIT_WIDTH -1] == 1'b1) begin 
							if (acc[2*BIT_WIDTH -1] == 16'b1000000000000000) 
								acc[2*BIT_WIDTH -1] = 16'b1000000000000001; 
						end
					end 
					next_state = stop; 
				 end  				 
			default: next_state = stop; 
		endcase 
	end 
	
	
endmodule 
