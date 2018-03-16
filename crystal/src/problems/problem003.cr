# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

require "../problem.cr"
require "../extensions/*"
require "../helpers/*"

class Problem003 < Problem
	@@expect = 6857

	def solve()
		#generic solve function

	end
end

prob = Problem003.new()
puts prob.solve
puts prob.solve_with_benchmark


puts "1: #{1.is_prime?}"
puts "-2: #{-2.is_prime?}"
puts "0: #{0.is_prime?}"
puts "2: #{2.is_prime?}"
puts "4: #{4.is_prime?}"
puts "5: #{5.is_prime?}"
puts "13: #{13.is_prime?}"
puts "6857: #{6857.is_prime?}"

