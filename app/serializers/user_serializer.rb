class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :location, :phone_number, :password_digest
end
