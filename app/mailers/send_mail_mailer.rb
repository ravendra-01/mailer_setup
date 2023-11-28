class SendMailMailer < ApplicationMailer

  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Test Action Mailer Tutorial')
  end
end
