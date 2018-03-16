# Sequence helpers (ie. Fibonacci)

def fib(max=4e6) : Array(Int32)
	fib_ary = [0,1,1]
	loop do
		next_num = fib_ary[-2] + fib_ary[-1]
		break if next_num > max
		fib_ary << next_num
	end
	fib_ary
end

# fib_ary = fib(10)
# puts fib_ary
