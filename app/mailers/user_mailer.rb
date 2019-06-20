class UserMailer < ActionMailer::Base
    default :from => "godofredoonrails@gmail.com"

    def registration_confirmation(user)
        @user = user
        mail(:to => "#{user.nome} <#{user.email}>", :subject => "Por favor, confirme o seu cadastro")
    end
end
