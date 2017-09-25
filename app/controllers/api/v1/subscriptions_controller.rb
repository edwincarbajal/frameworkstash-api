class Api::V1::SubscriptionsController < ApplicationController

  def new
    subscription = Subscription.new(subscription_params)
    if !subscription.save
      @errors = subscription.errors.full_messages
      render :status => 409
    end
  end

  def unsubscribe
    subscription = Subscription.find_by(email: subscription_params[:email])
    if subscription.destroy
      render :status => 200
    else
      render :status => 409
    end
  end

  private

  def subscription_params
    params.require(:subscription).permit(:email)
  end
end
