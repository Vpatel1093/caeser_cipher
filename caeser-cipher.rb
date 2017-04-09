#Implement Caeser cipher that takes input string, applies shift factor, and outputs modified string

def caeser_cipher(input_string,shift_factor)
	ciphered=""
	shift = (shift_factor.to_i)%26
	input_string.each_char do |char|
		if (65..90) === char.ord
			new_char = char.ord + shift
			new_char -= 26 if new_char>90
			new_char = new_char.chr
		elsif (97..122) === char.ord
			new_char = char.ord + shift
			new_char -= 26 if new_char>122
			new_char = new_char.chr			
		else
			new_char = char
		end
		ciphered += new_char
	end
	ciphered
end
