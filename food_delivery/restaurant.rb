# class Food
# 	attr_reader :food_name, :price

# 	def initialize(data)
# 		@food_name = food_name
# 		@price = price
# 	end
# end		
# menu = [
# 	Food.new({food_name: "clark kent", price: 15.00}),
# 	Food.new({food_name: "peter parker", price: 20.00})
# ]


class Application
	attr_reader :users

	def initialize(users)
		@users = users
	end

	def start
		puts "-----------------------------------"
		puts "Welcome to Fooding Inc.!"
		puts "-----------------------------------"

		username = ask_username
		password = ask_password
		user = authenticate(username, password)
		if !user
			exit
			p "user not found"
		end
	end

	def ask_username
		puts "What's your name?"
		user_name = gets.chomp
		if user_name.empty? 
			puts "No user input. Please insert a name!"
			exit
		end
		user_name #ESTA LINHA DEFINE O QUE SAI PARA FORA DO METODO. O QUE E RETORNADO
	end

	def ask_password
		puts "Please insert your password"	
		user_pass = gets.chomp
		if user_pass.empty? 
			puts "No user input"
			exit
		end
		user_pass #ESTA LINHA DEFINE O QUE SAI PARA FORA DO METODO. O QUE E RETORNADO
	end

	def authenticate(username, password)
		@users.find do |user|
			user.username == username && user.user_pass == password
		end	
	end
end

class User
	attr_reader :username, :user_function, :user_pass

	def initialize(data)
		@username = data[:username]
		@user_function = data[:user_function]
		@user_pass = data[:user_pass]
	end

	def to_s
		"#{@username} " + "#{@user_function} " + "#{@user_pass}" 
	end

end

users = [
	User.new({username: "clark kent", user_function: "manager", user_pass: "superman"}),
	User.new({username: "peter parker", user_function: "delivery boy", user_pass: "spiderman"})
]

class UserInterface

	def start
		puts "Please choose your option (number):"
		puts "1 - List Customers"
		puts "2 - Add customer"
		puts "3 - View Orders"
		puts "4 - Add order"
		puts "5 - Remove Order"
		puts "6 - List employees"
		puts "7 - Log out"
		user_option = gets.chomp.to_i
	end
end
app = Application.new(users)

app.start


















