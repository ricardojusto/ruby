

age = ARGV[0]

if age == nil # ou entao if !age
	p "Error"
elsif age.to_i < 18
	p "not allowed"
else
	p "allowed"
end


# if age < 18
# 	puts "Not Allowed to drink"
# elsif age >= 18
# 	puts "allowed to drink"
# else 
# 	"Error. Your didnt put age"
# end

