# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

require "../problem.cr"

class Problem003 < Problem
	@@expect = 6857

	def solve()
		#generic solve function
		num = 600851475143
		factors = num.factorize
		factors.max
	end
end

prob = Problem003.new()
puts prob.solve
puts prob.solve_with_benchmark
