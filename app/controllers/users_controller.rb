class UsersController < ApplicationController
  skip_before_action :authenticate_user!
  def auth_index
    @user_token = User.find_by_email(params[:email]).authentication_token
    render json: @user_token
  end
end
