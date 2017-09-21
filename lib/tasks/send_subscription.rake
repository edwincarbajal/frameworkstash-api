namespace :subscriptions do
  desc "Send Subscriptions"
  task :winner => :environment do
    SubscriptionMailer.subscription_email.deliver_now
  end
end
