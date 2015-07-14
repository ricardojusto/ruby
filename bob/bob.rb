
# puts "Hello"

# sentence = gets.chomp

# def bob(sentence)
# 	if sentence.end_with?("?")
# 		"Sure"
# 	elsif sentence.upcase == sentence
# 		"Whoa chill out"
# 	elsif !sentence.end_with?("?") && !sentence.upcase == !sentence
# 		"Whatever"
# 	elsif sentence.empty?
# 		"..."
# 	else 
# 	end
		
# end


# puts bob(sentence)

puts "Hello"

def bob(sentence)
	if sentence.strip.empty?
		"FIne be that way"
	elsif sentence == sentence.upcase && sentence != sentence.downcase
		"Whoa Chill out"
	elsif sentence.end_with?("?")
		"Sure"		
	else
		"Whatever"
	end
end

loop do
print ">" 
user_input = gets.chomp
	if user_input.downcase == "bye"
		puts "Goodbye!!!! YAAAAY!!"
		break
	end
puts bob(user_input)
end
