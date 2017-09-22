class SubscriptionMailer < ApplicationMailer
  default from: 'frameworkstash@gmail.com'

  def subscription_email
    @subscritions = Subscription.where(updated_at: 7.days.ago..Time.now)
    Subscription.all.each{|subscription| mail(to: "#{subscription.email}", subject: "Weekly Update")}
  end
end
