namespace :subscriptions do
  desc "Send Subscriptions"
  task :send => :environment do
    SubscriptionMailer.subscription_email.deliver_now
  end
end
