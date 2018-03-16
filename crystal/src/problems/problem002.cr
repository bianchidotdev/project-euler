#
#

require "../problem.cr"

class Problem002 < Problem
	@@expect = 4613732

	def solve()
		#generic solve function
		fib_ary = fib(4e6)
		fib_ary.select(&.even?).sum
	end
end

prob = Problem002.new()
puts prob.solve
puts prob.solve_with_benchmark
