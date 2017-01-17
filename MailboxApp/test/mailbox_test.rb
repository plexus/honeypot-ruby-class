require_relative '../email'
require_relative '../mailbox'
require 'test/unit'

class MailboxTest < Test::Unit::TestCase

  def setup
    @email = Email.new("Hello, world!", {:from => "me@world.com", :date => "2016-07-08"})
    @mailbox = Mailbox.new("INBOX", [@email])
  end

  def test_name
    assert_equal(@mailbox.name, "INBOX")
  end

  def test_emails
    assert_equal(@mailbox.emails, [@email])
  end

end
