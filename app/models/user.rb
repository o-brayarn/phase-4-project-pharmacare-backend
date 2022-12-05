class User < ApplicationRecord
  #   has_secure_password
  has_many :medicines
  has_many :pharmacists, through: :medicines
end
