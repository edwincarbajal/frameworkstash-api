class Api::V1::TutorialsController < ApplicationController
  before_action :get_framework, only: [:index]

  def index
    tutorials = @framework.tutorials.desc
    render json: tutorials, status: :ok
  end

  def like
    tutorial = Tutorial.find(params[:id])
    like = tutorial.likes.build(value: 1, tutorial: tutorial)
    if like.save
      head :no_content
    else
      render like.errors.fullmessages, status: 403
    end
  end

  def trending
    tutorials = Tutorial.trending
    render json: tutorials, status: :ok
  end

  def send_request
    binding.pry
    UserMailer.welcome_email.deliver_now
  end

  private
    def get_framework
      @framework = Framework.find(params[:id])
    end

    def like_params
      params.permit(:like).require(:value)
    end
end
