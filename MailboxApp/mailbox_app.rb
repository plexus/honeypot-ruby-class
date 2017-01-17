require 'sinatra'
require 'sinatra/reloader'

require_relative 'lib/email'
require_relative 'lib/mailbox'

configure :production do
  enable :reloader
end

def load_emails
  [
    Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
    Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
    Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
  ]
end

get '/' do
  @mailbox = Mailbox.new("OUTBOX", load_emails)

  erb :mailbox
end
