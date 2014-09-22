require 'FizzBuzz'

describe FizzBuzz do
	let(:fizzbuzz) { FizzBuzz.new }

	context 'knows when a number is divisible by' do
		it "3" do
			expect(fizzbuzz.is_divisible_by_three?(3)).to be true
		end

		it "5" do
			expect(fizzbuzz.is_divisible_by_five?(5)).to be true
		end

		it "15" do
			expect(fizzbuzz.is_divisible_by_fifteen?(15)).to be true
		end
	end

	it 'works only with numbers' do
		expect{fizzbuzz.is_divisible_by_three?('3')}.to raise_error("RuntimeError")
	end

	context 'shoud say' do

		it "Fizz when a number is divisible by 3" do
			expect(fizzbuzz.say(3)).to eq('Fizz')
		end

		it "Buzz when a number is divisible by 5" do
			expect(fizzbuzz.say(5)).to eq('Buzz')
		end

		it "FizzBuzz when a number is divisible by 15" do
			expect(fizzbuzz.say(15)).to eq('FizzBuzz')
		end
		it "the number when is not divisible by 3, 5 or 15" do
			expect(fizzbuzz.say(7)).to eq(7)
		end
	end	
end

# fizzbuzz = FizzBuzz.new
# [*1..45].each do {|number| fizzbuzz.say(number)}

