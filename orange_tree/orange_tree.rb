# TODO: age the tree of one year
  # TODO: check if the tree has survived
  # TODO: if so, make the tree height grow
  # TODO: if so, make the tree grow fruits



class OrangeTree
	attr_reader :age, :height, :death, :fruits, :pick

	def initialize(age)
		@age= 0
		@height = 0
		@death = rand(1..2)
		@fruits = 0
		@pick = ARGV[0]
	end

	def one_year_passes!
		@age += 1
		
 	end

	def tree_height
		if @age <= 10
			@height += 1
		else
			@height = 10
		end
	end

	def death
		if @age <= 50
			"It's alive"
		elsif @age > 50 && @age < 100 && @death == 1
			"alive"
		elsif @age > 50 && @age < 100 && @death == 2 
			"dead"
		else
			@age == 100
			"Dead"					
		end
	end

	def fruits
		if @age < 5
			@fruits = 0
		elsif @age >= 5 && @age < 10
			@fruits += 100
		elsif @age >= 10 && @age <= 15
			@fruits += 200
		else
			@fruits += 0
		end
	end

	# def pick_fruits
		
	# end

			

 

end

tree = OrangeTree.new(0)


# 100.times do 
# 	# puts "The orange tree is #{tree.one_year_passes!} years old and #{tree.tree_height} meters height and has #{tree.fruits} fruits!" 
# 	# puts "She is #{tree.death}!"
# 	# puts tree.pick_fruits
# 	end



