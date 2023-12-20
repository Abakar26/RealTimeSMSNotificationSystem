class User < ApplicationRecord
  has_secure_password
  after_create :send_welcome_sms

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true,
                    format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email format' }
  validates :phone_number, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }

  private

  def send_welcome_sms
    SmsService.new.send_sms(phone_number, "Welcome, #{name}! Thanks for joining our platform!")
  end
end
