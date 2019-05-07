class UserController < ApplicationController
  def index
  end

  # Defining function of the controller
  def create

      # Parameter that are obligatory to be passed and the ones that are optional
      @user = User.new(user_params)

      @user.save!
      redirect_to @user
  end

  # Showed when user is created
  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
      params
      .require(:user) # filters
      .permit(:nome,
              :email,
              :instituto,
              :curso,
              :info,
              :link_site,
              :link_fb,
              :link_tt)
  end


end
