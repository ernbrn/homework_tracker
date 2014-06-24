class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to assignments_path
      else
        flash[:error] = "That username/password combo is invalid."
        render 'new'
    end
  end


  def destroy
  end
end
