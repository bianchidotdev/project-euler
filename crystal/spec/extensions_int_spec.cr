# Spec for src/extensions/int.cr

require "./spec_helper.cr"

describe Int do
	describe "#divisible_by_any?" do
		it "should raise DivisionByZero error if any divisor is zero" do
			expect_raises(DivisionByZero) do
				1.divisible_by_any?(2, 5, 0)
			end
		end

		it "is true if divisible by any arguments" do
			15.divisible_by_any?(2, 4, 5).should be_true
		end

		it "is false if not divisible by any arguments" do
			15.divisible_by_any?(2, 4, 7, 13, 22).should be_false
		end
	end

	describe "#divisible_by_all?" do
		it "should raise DivisionByZero error if first false divisor is zero" do
			expect_raises(DivisionByZero) do
				15.divisible_by_all?(5, 0, 2)
			end
		end

		it "is true if divisible by all arguments" do
			15.divisible_by_all?(3, 5).should be_true
		end

		it "is false if not divisible by one of the arguments" do
			15.divisible_by_all?(3, 5, 6).should be_false
		end

		it "is false if not divisible by any argument" do
			15.divisible_by_all?(2, 4, 7, 13, 22).should be_false
		end
	end

	describe "is_prime?" do
		it "is false for any number below 2 (including negative numbers)" do
			0.is_prime?.should be_false
			-1.is_prime?.should be_false
			1.is_prime?.should be_false
		end
		
		it "is true if self is '2'" do
			2.is_prime?.should be_true
		end
		
		it "is false for any non-prime" do
			4.is_prime?.should be_false
			15.is_prime?.should be_false
			121.is_prime?.should be_false
		end
		
		it "is true for any prime number" do
			3.is_prime?.should be_true
			11.is_prime?.should be_true
			6857.is_prime?.should be_true
		end
	end
end
