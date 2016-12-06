class Email
  def initialize(subject, headers)
    @subject = subject
    @headers = headers
    @read = false
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

  def read?
    @read
  end

  def mark_as_read!
    @read = true
  end
end

email = Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" })
email.read? #=> false
email.mark_as_read! #=> true
email.read? #=> true
