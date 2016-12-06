require_relative 'email'

class Mailbox
  def initialize(name, emails)
    @name = name
    @emails = emails
  end

  def emails
    @emails
  end
end

# if __FILE__ == $0

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)

mailbox.emails.each do |email|
  puts "Date:    #{email.date}"
  puts "From:    #{email.from}"
  puts "Subject: #{email.subject}"
  puts
end

mailbox.unread_count #=> 3
mailbox.emails[1].mark_as_read!
mailbox.unread_count #=> 2
Array
- select {|x| }
- count

[1,2,3,4,5].select do |number|
  number > 3
end

# end
