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

	# emails = [
	# 	Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous"}),
	# 	Email.new("Keep on Coding", { :date => "2014-20-01", :from => "Jonh"}),
	# 	Email.new("Re: Homework this week", { :date => "2014-12-01", :from => "Marc"})
	# ]
	
	# mailbox = Mailbox.new("Ruby Study Groups", emails)

	# mailbox.emails.each do |email|
	# 	puts "Date:\t\t #{email.date}"
	# 	puts "From:\t\t #{email.from}" 
	# 	puts "Subject:\t #{email.subject}"
		
	# end


class MailboxHtmlFormatter
	def initialize(mailbox)
		@mailbox = mailbox
	end

	def format
output="
<html>
  <head>
    <style>
      table {
        border-collapse: collapse;
      }
      td, th {
        border: 1px solid black;
        padding: 1em;
      }
    </style>
  </head>
  <body>
    <h1>#{@mailbox.name}</h1>
    <table>
      <thead>
        <tr>
          <th>Date</th>
          <th>From</th>
          <th>Subject</th>
        </tr>
      </thead>
      <tbody>"
      @mailbox.emails.each do |email|
output << "	<tr>
		<td>#{email.date}</td>
		<td>#{email.from}</td>
		<td>#{email.subject}</td>
	</tr>"
end
 
output << "
   </table> 
  </body>
</html>"

	end

end

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]

mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxHtmlFormatter.new(mailbox)

puts formatter.format

# @mailbox.emails.map do |email|
#        "<tr>
# 		<td>#{email.date}</td>
# 		<td>#{email.from}</td>
# 		<td>#{email.subject}</td>
# 	</tr>"
# end.join

# ver a resolução do zamith
