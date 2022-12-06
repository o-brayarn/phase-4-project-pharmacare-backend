class Medicine < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders
  belongs_to :pharmacy
end
