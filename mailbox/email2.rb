class Email

	def initialize(subject, headers) #a ordem é importante
	@subject = subject
	@date = headers[:date]
	@from = headers[:from]
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

my_email = Email.new("Keep on coding! :)", {:date => "2014-12-01", :from => "Ferdous"})
puts "Date:\t\t #{my_email.date}"
puts "From:\t\t #{my_email.from}" 
puts "Subject:\t #{my_email.subject}" 