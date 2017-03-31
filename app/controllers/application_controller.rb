class ApplicationController < ActionController::API
  before_action :authenticate, except: [:auth]


  def authenticate
    user = User.find_by(token: request.headers["Token"] )
    if user
      render json: user
    else
      render json: {message: "token invalido"}
    end
  end
end
