class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :location, :contact, :age
end
