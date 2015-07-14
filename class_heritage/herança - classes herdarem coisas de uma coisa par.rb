# herança - classes herdarem coisas de uma coisa para outras

class Vehicle
	def initialize (wheels)
		@wheels = wheels
	end

	def to_s
		"I have #{@wheels} wheels"
	end
end



class Car
	def initialize (wheels, engine)
		@wheels = wheels
		@engine = engine
	end

	def to_s
		"I have #{@wheels} and a #{@engine} engine."
	end
end

vehicle = Vehicle.new(3)
car = Car.new(1500)

puts vehicle