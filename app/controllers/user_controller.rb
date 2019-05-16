class UserController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  # Defining function of the controller
  def create

      # Parameter that are obligatory to be passed and the ones that are optional
      @user = User.new(user_params)

      if @user.save
        log_in @user
        flash[:success] = "Cadastro realizado com sucesso!"
        redirect_to @user
      else
        render :new
      end

      #@errors = @user.errors.full_messages
      #render :new # views/new.html.haml
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
              :link_tt,
              :password,
              org_ids: [])

  end


end
