def head(value_head)
	value_head.first
	#ou
	value_head[0]
end

def tail(value_tail)
	value_tail.drop(1)
end

def init(value_init)
	value_init.take(value_init.size - 1)

end

def last(value_last)
	value_last.last
end


array = [1,2,3,4,5,6,7,8,9,10]
puts head(array)
p tail(array)
p init(array)
p last(array)