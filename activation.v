module activation(output[7:0] result, input start, input[7:0] inp);

	reg[7:0] B; 
	assign result = B; 
	
	always@(posedge start) begin
		case(inp)
			8'b00000000: B = 8'b00001000;		//positive numbers
			8'b00000001: B = 8'b00001000;
			8'b00000010: B = 8'b00001000;
			8'b00000011: B = 8'b00001000;
			8'b00000100: B = 8'b00001000;
			8'b00000101: B = 8'b00001001;
			8'b00000110: B = 8'b00001001;
			8'b00000111: B = 8'b00001001;
			8'b00001000: B = 8'b00001001;
			8'b00001001: B = 8'b00001010;
			8'b00001010: B = 8'b00001010;
			8'b00001011: B = 8'b00001010;
			8'b00001100: B = 8'b00001010;
			8'b00001101: B = 8'b00001011;
			8'b00001110: B = 8'b00001011;
			8'b00001111: B = 8'b00001011;
			8'b00010000: B = 8'b00001011;
			8'b00010001: B = 8'b00001011;
			8'b00010010: B = 8'b00001100;
			8'b00010011: B = 8'b00001100;
			8'b00010100: B = 8'b00001100;
			8'b00010101: B = 8'b00001100;
			8'b00010110: B = 8'b00001100;
			8'b00010111: B = 8'b00001100;
			8'b00011000: B = 8'b00001101;
			8'b00011001: B = 8'b00001101;
			8'b00011010: B = 8'b00001101;
			8'b00011011: B = 8'b00001101;
			8'b00011100: B = 8'b00001101;
			8'b00011101: B = 8'b00001101;
			8'b00011110: B = 8'b00001101;
			8'b00011111: B = 8'b00001101;
			8'b00100000: B = 8'b00001110;
			8'b00100001: B = 8'b00001110;
			8'b00100010: B = 8'b00001110;
			8'b00100011: B = 8'b00001110;
			8'b00100100: B = 8'b00001110;
			8'b00100101: B = 8'b00001110;
			8'b00100110: B = 8'b00001110;
			8'b00100111: B = 8'b00001110;
			8'b00101000: B = 8'b00001110;
			8'b00101001: B = 8'b00001110;
			8'b00101010: B = 8'b00001110;
			8'b00101011: B = 8'b00001110;
			8'b00101100: B = 8'b00001111;
			8'b00101101: B = 8'b00001111;
			8'b00101110: B = 8'b00001111;
			8'b00101111: B = 8'b00001111;
			8'b00110000: B = 8'b00001111;
			8'b00110001: B = 8'b00001111;
			8'b00110010: B = 8'b00001111;
			8'b00110011: B = 8'b00001111;
			8'b00110100: B = 8'b00001111;
			8'b00110101: B = 8'b00001111;
			8'b00110110: B = 8'b00001111;
			8'b00110111: B = 8'b00001111;
			8'b00111000: B = 8'b00001111;
			8'b00111001: B = 8'b00001111;
			8'b00111010: B = 8'b00001111;
			8'b00111011: B = 8'b00001111;
			8'b00111100: B = 8'b00001111;
			8'b00111101: B = 8'b00001111;
			8'b00111110: B = 8'b00001111;
			8'b00111111: B = 8'b00001111;
			8'b01000000: B = 8'b00001111;
			8'b01000001: B = 8'b00001111;
			8'b01000010: B = 8'b00001111;
			8'b01000011: B = 8'b00001111;
			8'b01000100: B = 8'b00001111;
			8'b01000101: B = 8'b00001111;
			8'b01000110: B = 8'b00001111;
			8'b01000111: B = 8'b00001111;
			8'b01001000: B = 8'b00001111;
			8'b01001001: B = 8'b00001111;
			8'b01001010: B = 8'b00001111;
			8'b01001011: B = 8'b00001111;
			8'b01001100: B = 8'b00001111;
			8'b01001101: B = 8'b00001111;
			8'b01001110: B = 8'b00001111;
			8'b01001111: B = 8'b00001111;
			8'b01010000: B = 8'b00001111;
			8'b01010001: B = 8'b00001111;
			8'b01010010: B = 8'b00001111;
			8'b01010011: B = 8'b00001111;
			8'b01010100: B = 8'b00001111;
			8'b01010101: B = 8'b00001111;
			8'b01010110: B = 8'b00001111;
			8'b01010111: B = 8'b00001111;
			8'b01011000: B = 8'b00001111;
			8'b01011001: B = 8'b00001111;
			8'b01011010: B = 8'b00001111;
			8'b01011011: B = 8'b00001111;
			8'b01011100: B = 8'b00001111;
			8'b01011101: B = 8'b00001111;
			8'b01011110: B = 8'b00001111;
			8'b01011111: B = 8'b00001111;
			8'b01100000: B = 8'b00001111;
			8'b01100001: B = 8'b00001111;
			8'b01100010: B = 8'b00001111;
			8'b01100011: B = 8'b00001111;
			8'b01100100: B = 8'b00001111;
			8'b01100101: B = 8'b00001111;
			8'b01100110: B = 8'b00001111;
			8'b01100111: B = 8'b00001111;
			8'b01101000: B = 8'b00001111;
			8'b01101001: B = 8'b00001111;
			8'b01101010: B = 8'b00001111;
			8'b01101011: B = 8'b00001111;
			8'b01101100: B = 8'b00001111;
			8'b01101101: B = 8'b00001111;
			8'b01101110: B = 8'b00001111;
			8'b01101111: B = 8'b00001111;
			8'b01110000: B = 8'b00001111;
			8'b01110001: B = 8'b00001111;
			8'b01110010: B = 8'b00001111;
			8'b01110011: B = 8'b00001111;
			8'b01110100: B = 8'b00001111;
			8'b01110101: B = 8'b00001111;
			8'b01110110: B = 8'b00001111;
			8'b01110111: B = 8'b00001111;
			8'b01111000: B = 8'b00001111;
			8'b01111001: B = 8'b00001111;
			8'b01111010: B = 8'b00001111;
			8'b01111011: B = 8'b00001111;
			8'b01111100: B = 8'b00001111;
			8'b01111101: B = 8'b00001111;
			8'b01111110: B = 8'b00001111;
			8'b01111111: B = 8'b00001111;	//negative numbers

			8'b11111111: B = 8'b00000111;
			8'b11111110: B = 8'b00000111;
			8'b11111101: B = 8'b00000111;
			8'b11111100: B = 8'b00000111;
			8'b11111011: B = 8'b00000110;
			8'b11111010: B = 8'b00000110;
			8'b11111001: B = 8'b00000110;
			8'b11111000: B = 8'b00000110;	
			8'b11110111: B = 8'b00000101;
			8'b11110110: B = 8'b00000101;
			8'b11110101: B = 8'b00000101;
			8'b11110100: B = 8'b00000101;
			8'b11110011: B = 8'b00000100;
			8'b11110010: B = 8'b00000100;
			8'b11110001: B = 8'b00000100;
			8'b11110000: B = 8'b00000100;
			8'b11101111: B = 8'b00000100;
			8'b11101110: B = 8'b00000011;
			8'b11101101: B = 8'b00000011;
			8'b11101100: B = 8'b00000011;
			8'b11101011: B = 8'b00000011;
			8'b11101010: B = 8'b00000011;
			8'b11101001: B = 8'b00000011;
			8'b11101000: B = 8'b00000010;	
			8'b11100111: B = 8'b00000010;
			8'b11100110: B = 8'b00000010;
			8'b11100101: B = 8'b00000010;
			8'b11100100: B = 8'b00000010;
			8'b11100011: B = 8'b00000010;
			8'b11100010: B = 8'b00000010;
			8'b11100001: B = 8'b00000010;
			8'b11100000: B = 8'b00000001;

			8'b11011111: B = 8'b00000001;
			8'b11011110: B = 8'b00000001;
			8'b11011101: B = 8'b00000001;
			8'b11011100: B = 8'b00000001;
			8'b11011011: B = 8'b00000001;
			8'b11011010: B = 8'b00000001;
			8'b11011001: B = 8'b00000001;
			8'b11011000: B = 8'b00000001;	
			8'b11010111: B = 8'b00000001;
			8'b11010110: B = 8'b00000001;
			8'b11010101: B = 8'b00000001;
			8'b11010100: B = 8'b00000000;
			8'b11010011: B = 8'b00000000;
			8'b11010010: B = 8'b00000000;
			8'b11010001: B = 8'b00000000;
			8'b11010000: B = 8'b00000000;
			8'b11001111: B = 8'b00000000;
			8'b11001110: B = 8'b00000000;
			8'b11001101: B = 8'b00000000;
			8'b11001100: B = 8'b00000000;
			8'b11001011: B = 8'b00000000;
			8'b11001010: B = 8'b00000000;
			8'b11001001: B = 8'b00000000;
			8'b11001000: B = 8'b00000000;	
			8'b11000111: B = 8'b00000000;
			8'b11000110: B = 8'b00000000;
			8'b11000101: B = 8'b00000000;
			8'b11000100: B = 8'b00000000;
			8'b11000011: B = 8'b00000000;
			8'b11000010: B = 8'b00000000;
			8'b11000001: B = 8'b00000000;
			8'b11000000: B = 8'b00000000;	

			8'b10111111: B = 8'b00000000;
			8'b10111110: B = 8'b00000000;
			8'b10111101: B = 8'b00000000;
			8'b10111100: B = 8'b00000000;
			8'b10111011: B = 8'b00000000;
			8'b10111010: B = 8'b00000000;
			8'b10111001: B = 8'b00000000;
			8'b10111000: B = 8'b00000000;	
			8'b10110111: B = 8'b00000000;
			8'b10110110: B = 8'b00000000;
			8'b10110101: B = 8'b00000000;
			8'b10110100: B = 8'b00000000;
			8'b10110011: B = 8'b00000000;
			8'b10110010: B = 8'b00000000;
			8'b10110001: B = 8'b00000000;
			8'b10110000: B = 8'b00000000;
			8'b10101111: B = 8'b00000000;
			8'b10101110: B = 8'b00000000;
			8'b10101101: B = 8'b00000000;
			8'b10101100: B = 8'b00000000;
			8'b10101011: B = 8'b00000000;
			8'b10101010: B = 8'b00000000;
			8'b10101001: B = 8'b00000000;
			8'b10101000: B = 8'b00000000;	
			8'b10100111: B = 8'b00000000;
			8'b10100110: B = 8'b00000000;
			8'b10100101: B = 8'b00000000;
			8'b10100100: B = 8'b00000000;
			8'b10100011: B = 8'b00000000;
			8'b10100010: B = 8'b00000000;
			8'b10100001: B = 8'b00000000;			

			8'b10011111: B = 8'b00000000;
			8'b10011110: B = 8'b00000000;
			8'b10011101: B = 8'b00000000;
			8'b10011100: B = 8'b00000000;
			8'b10011011: B = 8'b00000000;
			8'b10011010: B = 8'b00000000;
			8'b10011001: B = 8'b00000000;
			8'b10011000: B = 8'b00000000;	
			8'b10010111: B = 8'b00000000;
			8'b10010110: B = 8'b00000000;
			8'b10010101: B = 8'b00000000;
			8'b10010100: B = 8'b00000000;
			8'b10010011: B = 8'b00000000;
			8'b10010010: B = 8'b00000000;
			8'b10010001: B = 8'b00000000;
			8'b10010000: B = 8'b00000000;
			8'b10001111: B = 8'b00000000;
			8'b10001110: B = 8'b00000000;
			8'b10001101: B = 8'b00000000;
			8'b10001100: B = 8'b00000000;
			8'b10001011: B = 8'b00000000;
			8'b10001010: B = 8'b00000000;
			8'b10001001: B = 8'b00000000;
			8'b10001000: B = 8'b00000000;	
			8'b10000111: B = 8'b00000000;
			8'b10000110: B = 8'b00000000;
			8'b10000101: B = 8'b00000000;
			8'b10000100: B = 8'b00000000;
			8'b10000011: B = 8'b00000000;
			8'b10000010: B = 8'b00000000;
			8'b10000001: B = 8'b00000000;			
		endcase
	end
endmodule