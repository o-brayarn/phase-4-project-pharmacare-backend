class Pharmacy < ApplicationRecord
  has_many :medicines
  # has_many :orders, through: :medicines
end
