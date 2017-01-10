class Email
  def initialize(subject, headers)
    @subject = subject
    @headers = headers
  end

  def subject
    @subject
  end

  def date
    @headers[:date]
  end

  def from
    @headers[:from]
  end
end

#email = Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" })

#
# email = Email.new(...)
# p email.to_s
# "From: Ferdous\nSubject: Homework for this week\nDate: ..."
#
# puts email.to_s
# From: Ferdous
# Subject: Homework for this week
# Date: ...
#
#
#email = Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" })
# email.read? #=> false
# email.mark_as_read! #=> true
# email.read? #=> true
