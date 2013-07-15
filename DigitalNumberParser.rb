class DigitalNumberParser

	@code_to_number={576=>1, 484=>2}

	def DigitalNumberParser.convert_string_to_array_of_digits(number)
		digit_array=Array.new(9) {Array.new}
		lines=number.split("\n").collect
		lines.each{|line|
			line.chars.each_with_index{|character,index|
				digit_array[index/3].push(character)
			}
		}
		digit_array
	end

	def DigitalNumberParser.parse_digit(digit)
			code=0
			digit.each_with_index{|c,index| 
				if c!=' '
					code+=2**(index+1)
				end
			}
			@code_to_number[code]
	end

	def DigitalNumberParser.parse(number)
		number_string=""
		array_of_digits=convert_string_to_array_of_digits(number)
		array_of_digits.each{|l| 
			d=parse_digit(l)
			number_string<<d.to_s if d!=nil
		}
		return number_string
	end
end