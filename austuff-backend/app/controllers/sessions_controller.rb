class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @user = User.find_by(username: auth_params[:username])
    if @user && @user.authenticate(auth_params[:password])
      jwt = JWT.encode({user_id: @user.id}, 'my_s3cr3t')
      render json: {jwt: jwt}
    else
      render json: { message: 'Please log in' }, status: :unauthorized
    end
  end

  def destroy
  end

  private
    def auth_params
      params.require(:session).permit(:username, :password)
    end

end
