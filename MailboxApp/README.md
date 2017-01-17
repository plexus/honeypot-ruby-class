This is a exercise that combines Sinatra with the earlier stuff we've done.

First grab the skeleton code from Github

Browse to

    https://github.com/plexus/honeypot-ruby-class

to find the clone URL (green button with "Clone or Download")

    git clone https://github.com/plexus/honeypot-ruby-class.git
    cd honeypot-ruby-class/MailboxApp

Now install the dependencies

    bundle install

To run Sinatra we'll use a tool called "rerun" so changes to files automatically get picked up, therefore starting

To run Sinatra, use this

    bundle exec ruby mailbox_app.rb

To run the tests do

    bundle exec ruby test/email_test.rb
    bundle exec ruby test/mailbox_test.rb

Exercises
=========

## Implement `email.rb`

You will find an empty version of the `Email` class in `lib/email.rb`. This is
the same Email class we created earlier. If you already have an earlier version
then just copy it over, or you can implement it from scratch.

To test if your implementation is correct, you can run the automatic tests for
Email

    ruby test/email_test.rb

## Implement `mailbox.rb`

Same as for Email, you can find the empty version under `lib/mailbox.rb`, test
it with

    ruby test/mailbox_test.rb
