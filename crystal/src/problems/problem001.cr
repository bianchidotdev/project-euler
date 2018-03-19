# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

require "../problem.cr"

class Problem001 < Problem
	@@expect = 233168

	def solve()
		#generic solve function
		(1...1000)
			.select{|i| i.divisible_by_any?(3, 5)}
			.sum
	end
end

prob = Problem001.new()
puts prob.solve
