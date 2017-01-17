require_relative '../email'
require 'test/unit'

class EmailTest < Test::Unit::TestCase

  def setup
    @email = Email.new("Hello, world!", {:from => "me@world.com", :date => "2016-07-08"})
  end

  def test_subject
    assert_equal(@email.subject, "Hello, world!")
  end

  def test_from
    assert_equal(@email.from, "me@world.com")
  end

  def test_date
    assert_equal(@email.date, "2016-07-08")
  end

end
