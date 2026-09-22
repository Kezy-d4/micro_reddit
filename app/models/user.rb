class User < ApplicationRecord
  validates :name, :email, :password, presence: true
  validates :name, :email, uniqueness: true
  validates :name, length: { in: 2..30 }
  validates :password, length: { minimum: 8 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
