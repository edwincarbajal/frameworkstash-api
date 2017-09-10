class Api::V1::FrameworksController < ApplicationController
  def index
    frameworks = Framework.all
    render json: frameworks, status: :ok
  end

  def show
    framework = Framework.find(params[:id])
    render json: framework, status: :ok
  end
end
