#
#

require "benchmark"

abstract class Problem
	# Abstract class for problems

	abstract def solve

	def solve_with_benchmark
		Benchmark.bm do |x|
			x.report("Solution:") { solve }
		end
	end

end

# require "./problems/problem001.cr"

# prob = Problem001.new()
# puts prob.solve_with_benchmark
