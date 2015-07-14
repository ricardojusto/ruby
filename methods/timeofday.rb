require "date"

hour = DateTime.now.hour

def time_of_day(hour)

				 if hour.between?(6, 12)
					"Morning"
				elsif hour.between?(12, 18)
					"Afternoon"
				elsif hour.between?(18, 24)
					"Evening"
				else
					"Night"
				end
end

puts "The time of the day is #{time_of_day(hour)}!"
		

# definimos um método
# definimos um parametro
# 	if my_hour >= 6 && myhour <12
# 		"Morning"
# 	elsif condição
# 	elsif condição
# 	else
# 	end
# end

# print o resultado do método
	# puts time_of_day(hour)



		
# para o user dar a hora

# user_hour = gets_to.i (para o que ele escrever seja um numero)
# e depois
# puts time_of_day(user_hour)