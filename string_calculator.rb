class StringCalculator
	def self.add(numbers)
		return 0 if numbers.empty?

		number_array = numbers.split(',')
		number_array.map(&:to_i).reduce(:+)
	end
end