class UserController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def index
    @users = User.all 
  end

  # Defining function of the controller
  def create

      # Parameter that are obligatory to be passed and the ones that are optional
      @user = User.new(user_params)

      if @user.save
        UserMailer.account_activation(@user).deliver_later
        flash[:info] = "Por favor, cheque o seu e-mail para ativar a sua conta."
        redirect_to root_url
      else
        render 'new'
      end

      #@errors = @user.errors.full_messages
      #render :new # views/new.html.haml
  end

  def edit
    @user = User.find(params[:id])
  end

  # Update the database
  def update

    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      # Handle a successful update.
      redirect_to @user

    else
      render 'edit'
    end
  end

  # Showed when user is created
  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to user_index_path
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
              :password_confirmation)
  end

end
