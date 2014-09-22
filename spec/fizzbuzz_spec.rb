require 'FizzBuzz'

describe FizzBuzz do

	it "knows when a number is divisible by 3" do
		fizzbuzz = FizzBuzz.new
		expect(fizzbuzz.is_divisible_by_three?(3)).to be true
	end
end