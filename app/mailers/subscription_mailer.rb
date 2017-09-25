class SubscriptionMailer < ApplicationMailer
  default from: 'frameworkstash@gmail.com'

  def subscription_email(user_email)
    @tutorials = Tutorial.where(updated_at:
      7.days.ago..Time.now)
    @user = user_email.id
     mail(to: "#{user_email.email}", subject: "Weekly Update")
  end
end
