class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :location, :phone_number, :password_digest
end
