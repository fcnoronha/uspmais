class SessionController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            if user.email_confirmed
                # Log the user in and redirect to the user's show page.
                log_in user
                redirect_to user
            else
                flash[:error] = 'Ative a sua conta para que possa fazer o Log in'
            end
        else
            # Create an error message.
            flash.now[:danger] = 'Combinação email/senha invalida!'
            render 'new'
        end
    end

    def destroy
        log_out
        redirect_to root_url
    end

end
