require_relative '../string_calculator'

RSpec.describe StringCalculator do
	describe ".add" do
		it "returns 0 for an empty string" do
			expect(StringCalculator.add("")).to eq(0)
		end

		it "returns the number itself if only one number is provided" do
			expect(StringCalculator.add("1")).to eq(1)
			expect(StringCalculator.add("2")).to eq(2)
		end

		it "return the sum of two numbers" do
			expect(StringCalculator.add("1,2")).to eq(3)
		end

		it "returns the sum of multiple numbers" do
			expect(StringCalculator.add("1,2,3,4,5,6")).to eq(21)
		end

		it "raises an exception for multiple negative numbers" do
			expect { StringCalculator.add("-1,-2,-3,4") }.to raise_error("negative numbers not allowed: -1, -2, -3")
		end
	end
end