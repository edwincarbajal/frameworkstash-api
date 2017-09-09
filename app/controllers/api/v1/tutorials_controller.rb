class Api::V1::TutorialsController < ApplicationController
  before_action :get_framework, only: [:index]

  def index
    tutorials = @framework.tutorials
    render json: tutorials, status: :ok
  end

  private
    def get_framework
      @framework = Framework.find(params[:id])
    end
end
