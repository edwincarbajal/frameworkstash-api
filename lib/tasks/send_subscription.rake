namespace :subscriptions do
  desc "Send Subscriptions"
  task :send => :environment do
    Subscription.all.each do |subscription|
      SubscriptionMailer.subscription_email(subscription).deliver_now
    end
  end
end
