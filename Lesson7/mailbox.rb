require_relative 'email'

class Mailbox
  def initialize(name, emails)
    @name = name
    @emails = emails
  end

  def emails
    @emails
  end

  def unread_emails
    emails.select do |email|
      ! email.read?
    end
  end

  def search(query)
    emails.select do |email|
      email.subject.include?(query)
    end
  end

  def unread_count
    unread_emails.count
  end
end

# if __FILE__ == $0
#
emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
# mailbox = Mailbox.new("Ruby Study Group", emails)
#
# mailbox.emails.each do |email|
#   puts "Date:    #{email.date}"
#   puts "From:    #{email.from}"
#   puts "Subject: #{email.subject}"
#   puts
# end
#
# puts mailbox.unread_count #=> 3
# mailbox.emails[1].mark_as_read!
# puts mailbox.unread_count #=> 2

# puts mailbox.search("Homework") #=> [#<Email...>, #<Email...>]
#
# email = Email.new(...)
# puts email.to_s
# "From: Ferdous\nSubject: Homework for this week\nDate: ..."

#
# String
# - include?(...)

# Array
# - select {|x| }
# - count
#
# [1,2,3,4,5].select do |number|
#   number > 3
# end

# end
