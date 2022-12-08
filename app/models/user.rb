class User < ApplicationRecord
  has_secure_password
  has_many :orders, dependent: :destroy
  has_many :medicines, through: :orders

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :phone_number, length: { minimum: 10 }
end
