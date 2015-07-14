class OrangeTree
	attr_reader :height, :age, :fruits

	def initialize(age)
		@height = 0
		@age = 0
		@fruits = 0

	end

	def dead?
		if @age >= 100
			true
		elsif @age.between?(51,99)
			[true, false].sample
		else
		false
 	end

 	def one_year_passes!
 		@age += 1
 		if @age <= 10
 			@height +=1
 		end

 		if @age.between?(6,10)
 			@fruits = 100
 		elsif @age.between?(11,15)
 			@fruits = 200
 		else
 			@fruits = 0
 		end

 		def pick_a_fruit
 			@fruits = @fruits -1
 		end
 end