class OrderSerializer < ActiveModel::Serializer
  attributes :medicine_id, :user_id, :created_at
  belongs_to :user
end
