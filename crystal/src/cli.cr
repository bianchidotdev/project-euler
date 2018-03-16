#

dir = Dir.new(Dir.current + "/problems/")
problems = dir.entries.select{|entry| /problem\d{3}.cr/.match(entry)}.sort
problems.each_with_index do |problem, i|
	puts "#{i}. #{problem}"
end

input = gets
if input.is_a(String)?
	input.to_i
	validate_input(input, 0...problems.size)
	puts "You selected option ##{input}!"
end

def validate_input(input : Int, range : Range)
	range.include?(input)
end
