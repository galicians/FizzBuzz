class FizzBuzz

	def is_divisible_by_three?(number)
		divisible(number, 3)
	end

	def is_divisible_by_five?(number)
		divisible(number, 5)
	end

	def is_divisible_by_fifteen?(number)
		divisible(number, 15)
	end

	def divisible(number,divisor)
		raise "RuntimeError" if number.class != Fixnum
		number % divisor == 0
	end

	def say(number)
		return 'FizzBuzz' if divisible(number,15)
		return 'Fizz' if divisible(number,3)
		return 'Buzz' if divisible(number,5)
		number
	end
end

fizzbuzz = FizzBuzz.new
[*1..100].each {|number| puts fizzbuzz.say(number)}