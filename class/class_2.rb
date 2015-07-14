class Square
	def initialize(heigth)
		@height = heigth
	end
	def volume(b)
		@height * b
	end
end

my_square = Square.new(2)
#p my_square.volume(2, 2)
p my_square.volume(2)
