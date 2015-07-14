class Email

	def initialize(subject, emails) #a ordem é importante
	@subject = subject
	@date = emails[:date]
	@from = emails[:from]
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

# my_email = Email.new("Keep on coding! :)", {:date => "2014-12-01", :from => "Ferdous"})
# puts "Date:\t\t #{my_email.date}"
# puts "From:\t\t #{my_email.from}" 
# puts "Subject:\t #{my_email.subject}"

class Mailbox
	def initialize(name, data)
		@name = name
		@data = data
	end

	def name
		@name
	end

	def emails
		@data
	end
end

	emails = [
		Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous"}),
		Email.new("Keep on Coding", { :date => "2014-20-01", :from => "Jonh"}),
		Email.new("Re: Homework this week", { :date => "2014-12-01", :from => "Marc"})
	]
	
	mailbox = Mailbox.new("Ruby Study Groups", emails)

	mailbox.emails.each do |email|
		puts "Date:\t\t #{email.date}"
		puts "From:\t\t #{email.from}" 
		puts "Subject:\t #{email.subject}"
		
	end


