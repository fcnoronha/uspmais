class UserController < ApplicationController
  def index
  end
  # Defining function of the controller
  def create
      puts  "erh35t5g5t"
      render plain: params[:user].inspect
  end


end
