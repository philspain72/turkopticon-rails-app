class RegMailer < ApplicationMailer

  def confirm(person, hash)
    @subject    = '[turkopticon] Please confirm your email address'
    @hash       = hash
    @recipients = person.email
    @from       = 'turkopticon@ucsd.edu'
    @sent_on    = Time.now
    @headers    = {}
    mail(from: @from, to: @recipients, subject: @subject)
  end

  def password_reset(person, new_password)
    @subject      = '[turkopticon] Your password was reset'
    @recipients   = person.email
    @new_password = new_password
    @from         = 'turkopticon@ucsd.edu'
    @sent_on      = Time.now
    @headers      = {}
    mail(from: @from, to: @recipients, subject: @subject)
  end

  def password_change(person)
    @subject      = '[turkopticon] Your password was changed'
    @recipients   = person.email
    @from         = 'turkopticon@ucsd.edu'
    @sent_on      = Time.now
    @headers      = {}
    mail(from: @from, to: @recipients, subject: @subject)
  end

end
