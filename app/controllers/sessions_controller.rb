class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user_path(current_user), notice: "You have successfully logged in"
      else
        flash[:notice] = "Invalid Username/Password combination"
        render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path

  end
end
