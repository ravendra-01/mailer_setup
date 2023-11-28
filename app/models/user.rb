class User < ApplicationRecord
  after_create :send_welcome_mail
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private

  def send_welcome_mail
    SendMailMailer.with(user: self).welcome_email.deliver_later
  end
end
