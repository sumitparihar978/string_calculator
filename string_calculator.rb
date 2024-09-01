class StringCalculator
	def self.add(numbers)
		return 0 if numbers.empty?
		# Default: comma or newline
		delimiter = /,|\n/  
		# Check for a custom delimiter
		if numbers.start_with?("//")
			custom_delimiter, numbers = numbers[2..].split("\n", 2)
			delimiter = Regexp.escape(custom_delimiter)  
		end

		number_array = numbers.split(/#{delimiter}/).map(&:to_i)
		# handle negetive number
		negatives = number_array.reject { |n| n >= 0 }

		unless negatives.empty?
			raise "negative numbers not allowed: #{negatives.join(', ')}"
		end

		number_array.sum
	end
end