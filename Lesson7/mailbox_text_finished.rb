require_relative 'email'
require_relative 'mailbox'

class MailboxTextFormatter
  def initialize(mailbox)
    @mailbox = mailbox
  end

  def emails
    @mailbox.emails
  end

  def from_width
    emails.map {|email| email.from.length }.max
  end

  def subject_width
    emails.map {|email| email.subject.length }.max
  end

  def divider
    "+------------+-#{'-' * from_width}-+-#{'-' * subject_width}-+"
  end

  def format_email(email)
    "| #{email.date} | #{email.from.ljust(from_width)} | #{email.subject.ljust(subject_width)} |"
  end

  def format_header
    "| Date       | #{'From'.ljust(from_width)} | #{'Subject'.ljust(subject_width)} |"
  end

  def format_emails
    @mailbox.emails.map {|email| format_email(email) }
  end

  def format
    lines = [divider, format_header, divider]
    lines = lines + format_emails
    lines << divider
    lines.join("\n")
  end
end

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxTextFormatter.new(mailbox)

puts formatter.format
