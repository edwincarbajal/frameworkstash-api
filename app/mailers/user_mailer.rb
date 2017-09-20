class UserMailer < ApplicationMailer

default from: 'frameworkstash@gmail.com'
 
  def welcome_email 
    mail(to: 'koomen.ted@gmail.com', subject: 'Welcome to My Awesome Site')
  end

end
