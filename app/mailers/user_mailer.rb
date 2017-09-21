class UserMailer < ApplicationMailer

default from: 'frameworkstash@gmail.com'

  def welcome_email(user_input)
    @name = user_input[:name]
    @email = user_input[:email]
    @topic = user_input[:topic]
    @description = user_input[:value]
    mail(to: 'frameworkstash@gmail.com', subject: 'Tutorial Request')
  end

end
