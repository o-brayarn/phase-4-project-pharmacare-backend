class User < ApplicationRecord
  has_secure_password
  has_many :orders, dependent: :destroy
  has_many :medicines, through: :orders
end
