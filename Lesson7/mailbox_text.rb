require_relative 'email'
require_relative 'mailbox'

# +------------+---------+------------------------+
# | Date       | From    | Subject                |
# +------------+---------+------------------------+
# | 2014-12-01 | Ferdous | Homework this week     |
# | 2014-12-01 | Dajana  | Keep on coding! :)     |
# | 2014-12-02 | Ariane  | Re: Homework this week |
# +------------+---------+------------------------+

class MailboxTextFormatter
  def initialize(mailbox)
    @mailbox = mailbox
  end

  def emails
    @mailbox.emails
  end

  def format_divider
    [
      "+",
      "-"*(max_length(:date) + 2),
      "+",
      "-"*(max_length(:from) + 2),
      "+",
      "-"*(max_length(:subject) + 2),
      "+",
    ].join
  end

  def length_adjuster(date, from, subject)
    "| " + [date.ljust(max_length(:date)),
            from.ljust(max_length(:from)),
            subject.ljust(max_length(:subject))
           ].join(" | ") + " |"
  end

  def format_header
    length_adjuster("Date", "From", "Subject")
  end

  def format_body
    emails.map {|e| length_adjuster(e.date, e.from, e.subject)}
  end

  def max_length(attr)
    emails.map {|email| email.send(attr).length }.max
  end

  def format
    [format_divider,
     format_header,
     format_divider,
     format_body,
     format_divider].join("\n")
  end
end

fred = [
  Email.new("Homework next week", { :date => "2014-12-1", :from => "Ferdous" }),
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" }),
  Email.new("Re: Homework this week hallo", { :date => "2014-12-02", :from => "Arne Brasseur" })
]

joanna = Mailbox.new("Ruby Study Group", fred)

bernard = MailboxTextFormatter.new(joanna)

puts bernard.format

# puts bernard.max_subject_length
# puts bernard.max_from_length
