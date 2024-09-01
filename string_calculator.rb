class StringCalculator
	def self.add(numbers)
		return 0 if numbers.empty?

		number_array = numbers.split(',').map(&:to_i)
		# handle negetive number
		negatives = number_array.reject { |n| n >= 0 }

		unless negatives.empty?
			raise "negative numbers not allowed: #{negatives.join(', ')}"
		end

		number_array.reduce(:+)
	end
end