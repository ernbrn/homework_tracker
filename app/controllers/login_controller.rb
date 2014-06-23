class LoginController < ApplicationController
  def new
    @users = User.all
  end


 def create
    if params[:user_id]
      session[:current_user_id] = params[:user_id]
    end
    redirect_to assignments_path
  end

end
