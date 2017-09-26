class SubscriptionMailer < ApplicationMailer
  default from: 'hello@frameworkstash.com'

  def subscription_email(user_email)
    @tutorials = Tutorial.where(updated_at:
      7.days.ago..Time.now)
    @user = user_email.id
     mail(from: "Confirmation <hello@frameworkstash.com>", to: "#{user_email.email}", subject: "Weekly Digest")
  end
end
