class Email

	def initialize(subject, date, from) #a ordem é importante
	@subject = subject
	@date = date
	@from = from
	end

	def subject
		@subject
	end

	def date
		@date
	end

	def from
		@from		
	end
end

my_email = Email.new("Homework this week", "2014-12-01", "Ferdous")
puts "Date:\t\t #{my_email.date}"
puts "From:\t\t #{my_email.from}" 
puts "Subject:\t #{my_email.subject}" 

#getters setters
=begin

class Email
	attr_reader :date, :from, :subject (a variavel que tem o arroba tem que ter o mesmo nome que isto)

def initialize(subject, date, from)
@subject = ...		
end