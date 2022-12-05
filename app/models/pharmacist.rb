class Pharmacist < ApplicationRecord
#   has_secure_password
  has_many :medicines, dependent: :destroy
  has_many :users, through: :medicines
end
