class UserMailer < ApplicationMailer
  default from: "a.neusch@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
      to: 'a.neusch@gmail.com',
      subject: "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "New Bike App"
    mail(to: user.email,
      subject: "Welcome to #{@appname}!")
  end
end
