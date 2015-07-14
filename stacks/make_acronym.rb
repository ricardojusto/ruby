# Description:
# Implement a function called makeAcronym that returns the first letters of each word in a passed in string.

# Make sure the letters returned are uppercase.

# If the value passed in is not a string return 'Not a string'.

# If the value passed in is a string which contains characters other than spaces and alphabet letters, return 'Not letters'.

# If the string is empty, just return the string itself: "".

# EXAMPLES:

# 'Hello codewarrior' -> 'HC'

# 'a42' -> 'Not letters'

# 42 -> 'Not a string'

# [2,12] -> 'Not a string'

# {name: 'Abraham'} -> 'Not a string'



# def make_acronym(name)
# 	if name.count("0-9") > 0
# 		"Not a string"
# 	else
# 		name.split.map do |names|
# 			names.capitalize
# 		end
# 	end
# end

# p make_acronym("ricardo justo")


def make_acronym(sentence)
	return "Not a String" unless sentence.is_a?(String)

	 sentence.split.map do |word|
		word[0].upcase
	end.join
end

#p make_acronym("ricardo justo")

p make_acronym(42)