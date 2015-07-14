


require "prime" # desta maneira chamamos a class prime que já existe no ruby para essa função. quando usamos o require colocamos o nome da class entre aspas e sempre em letras minusculas.

# number_property = ARGV[0]

# puts "PRIME: #{Prime.prime?(number_property)}"
# puts "ODD: #{number_property.odd?}"
# #puts "EVEN: #{number_property.even?}"
# puts "MULTIPLE 10: #{number_property % 10 == 0}" #modulus e remainder - o que sobra é o que falta para atingir o número inteiro.





class Number
	attr_reader :number_property, :result

	def initialize(number_property)
		@number_property = number_property
		@result = []
	end

	def check_number
		@result << Prime.prime?(@number_property)
		@result << @number_property.odd?
		@result << (@number_property % 10 == 0)
		@result
	end

	# def to_s
	# 	"#{@result}"
	# end
end

my_number = Number.new(9)

p my_number.check_number

# ###########################
# resolução:

# def number_property(num)
# 	[num.prime? && num>0, num.even?, num%10==0]
# end

# p number_property(11)
