# herança - classes herdarem coisas de uma coisa para outras

class Vehicle
	def initialize (wheels)
		@wheels = wheels
	end

	def color
		"White"
	end

	def to_s
		"I have #{@wheels} wheels"
	end
end



class Car < Vehicle
	def initialize (wheels, engine)
		super(wheels)
		@engine = engine
	end

	def to_s
		super + " and a #{@engine} engine."
	end
end

#vehicle = Vehicle.new(3)
car = Car.new(4, 1500)

puts car