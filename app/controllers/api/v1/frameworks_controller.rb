class Api::V1::FrameworksController < ApplicationController
  def index
    frameworks = Framework.all
    render json: frameworks, status: :ok
  end
end
