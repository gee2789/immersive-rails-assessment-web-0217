class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by_username(params["user"]["username"])
    if @user
      if @user.authenticate(params["user"]["password"]) || nil
        session[:id] = @user.id
        redirect_to episodes_path
      else
        redirect_to new_session_path
      end
    else
      redirect_to new_session_path
    end
  end


  private

  # def user_params
  #   params.require(:user).permit(:username, :password)
  # end

end
