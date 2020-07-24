class V1::SessionsController < ApplicationController
  before_action :load_user, only: :create

  def create
    if @user.valid_password?(params[:password])
      sign_in "user", @user
      render json: {
        messages: "Signed In Successfully",
        is_success: true,
        data: {user: @user}
      }, status: :ok
    else
      render json: {
        messages: "Signed In Failed - Unauthorized",
        is_success: false,
        data: {}
      }, status: :unauthorized
    end
  end

  private
  def load_user
    @user = User.find_for_database_authentication(email: params[:email])
    if @user
      return @user
    else
      render json: {
        messages: "Cannot get User",
        is_success: false,
        data: {}
      }, status: :failure
    end
  end
end
