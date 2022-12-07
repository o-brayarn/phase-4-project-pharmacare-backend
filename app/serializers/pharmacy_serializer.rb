class PharmacySerializer < ActiveModel::Serializer
  attributes :name, :location, :email, :address
end
