class SessionController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            # Log the user in and redirect to the user's show page.
            log_in user
            redirect_to user
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
