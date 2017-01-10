require_relative 'email'
require_relative 'mailbox'
require 'test/unit'

class MailboxTest < Test::Unit::TestCase

  def setup
    @mailbox = Mailbox.new(
      "INBOX",
      [
        Email.new("Hello, world!", {:from => "me@world.com", :date => "2016-07-08"}),
        Email.new("Wassup?", {:from => "me@bar.com", :date => "2016-09-10"})
      ]
    )
  end

  def test_name
    assert_equal(@mailbox.name, "INBOX")
  end

  def test_emails
    assert_equal(@mailbox.emails.count, 1)
    assert_equal(@mailbox.emails.map{|e| e.subject}, ["Wassup?"])
  end

end
