class Pharmacy < ApplicationRecord
  #   has_secure_password
  has_many :medicines
  has_many :orders, through: :medicines
end
