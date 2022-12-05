class Medicine < ApplicationRecord
  has_many :users
  belongs_to :pharmacist
end
