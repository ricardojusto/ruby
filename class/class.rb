# class Rectangle

# 	def perimeter
# 		2*(@length+@breadth)
# 	end

# end

# my_rectangle = Rectangle.new

# puts my_rectangle.perimeter



# class Reverser
# 	def initialize(data)
# 		@data=data
# 	end

# 	def reverse
# 		if @data.is_a?(String)
# 			@data.reverse
# 		elsif @data.is_a?(Fixnum)
# 			@data.to_s.reverse.to_i
# 		else
# 			@data
		
# 		end
# 	end
# end

# reverser = Reverser.new([1,2,3]) #sendo um array não faz nada. se for string faz o reverse
# #r 
# p reverser.reverse
# reverse_int = Reverser.new(123)
# p reverse_int.reverse
	

class Car
	def initialize(gear)
		@shift = gear
	end

	def startengine
	if @shift == 1
	puts "The car is moving in the first gear"
	end

	def velocity(x,y)
		x*y
	end
end
end

my_car = Car.new(1) #OBRIGATORIO CRIAR ISTANCIA DO OBJECTO; VALOR OPCIONAL
my_car.startengine
puts my_car.velocity(10, 100)