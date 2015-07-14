



# class Stack

# 	def initialize
# 	@stack = []
# 	end

# 	def push(num) #array.push appends an element to the array.
# 		@stack.push(num)
# 		#ou
# 		#@stack << num
# 	end

# 	def pop #array.pop removes (and returns) the last element in the array.
# 		@stack.pop
# 	end

# end



# stack = Stack.new

# stack.push(2)
# stack.push(3)
# p stack.pop # => 3
# p stack.pop # => 2
# p stack.pop # => nil


############################################################
# class Queue

# 	def initialize
# 	@stack = []
# 	end

# 	def enqueue(num) 
# 		@stack.unshift(num) #o primeiro vai passando para a ultima posição
	
# 	end

# 	def dequeue #array.pop removes (and returns) the last element in the array.
# 		@stack.pop
# 	end

# end

# #my_stack = Stack.new

# # p my_stack.stack_push

# # p my_stack.stack_pop


# queue = Queue.new
# queue.enqueue(2)
# queue.enqueue(3)

# p queue.dequeue


######################################################################################

class Queue

	def initialize
	@stack = []
	end

	def enqueue(pos,num) 
		@stack.insert(pos, num)
	
	end

	def dequeue #array.pop removes (and returns) the last element in the array.
		#@stack.pop
		@stack.delete_at(1)  #apaga e ele devolve o que estava lá e apaga-o. o outro element do array que estava lá passa para primeiro.
	end

end



queue = Queue.new
queue.enqueue(0,1)
queue.enqueue(1,3)

p queue.dequeue