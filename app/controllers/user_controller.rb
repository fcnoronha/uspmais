class UserController < ApplicationController
  def index
  end

  # Defining function of the controller
  def create

      # Parameter that are obligatory to be passed and the ones that are optional
      @user = User.new(
               params
               .require(:nome, :email, :instituto, :curso, :info)
               .permit(:link_site, :link_fb, :link_tt))

      @user.save
      redirect_to @user
  end

  # Showed when user is created
  def show
    @user = User.find(params[:id])
  end

end
