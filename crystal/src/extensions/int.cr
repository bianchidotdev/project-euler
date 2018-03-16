struct Int
	def divisible_by_any?(*nums) : Bool
		nums.each do |num|
			return true if self.divisible_by?(num)
		end
		return false
	end

	def divisible_by_all?(*nums) : Bool
		nums.each do |num|
			return false if !self.divisible_by?(num)
		end
		return true
	end


	def is_prime? : Bool
		if self < 2
			return false
		elsif self == 2
			return true
		elsif self.divisible_by?(2)
			return false
		else
			root = Math.sqrt(self).to_i
			(3..root).step(2).each do |n|
				if self % n == 0
					return false
				end
			end
			return true
		end
	end
end
