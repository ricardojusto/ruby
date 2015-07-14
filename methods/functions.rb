# def say_my_name
# 	"Ricardo"

# end

# puts say_my_name


			# def sum (a, b)
			# 	a + b
			# end

			# puts sum(2, 2)


# dentro de uma função o que está escrito na ultima linha é devolvido
# nas funções
# return está implicito

# outra opção:

			# def allowed_to_drink(age)

			# 	if age >=18
			# 		"Allowed to drink"
			# 	else
			# 		"Not Allowed"
			# 	end
			# end

			# puts "How old are you?"
			# age=gets.chomp.to_i 
			# puts allowed_to_drink(age)


def no_odds(values)
	 even_numbers = []
	 numbers.each do |value|
	 if value.even? 
	 	even_numbers ««« value
	 end
	end
	return even_numbers	
end

p no_odds([1,2,3,4,5,6,7,8])

#usar tambem a opção select ou reject --- ver doc
