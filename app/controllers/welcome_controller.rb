class WelcomeController < ApplicationController
  def index
    @user = User.all
    @assignments = Assignment.all
  end
end
