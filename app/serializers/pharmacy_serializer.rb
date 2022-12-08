class PharmacySerializer < ActiveModel::Serializer
  attributes :name, :location, :email, :address, :phone_number
end
