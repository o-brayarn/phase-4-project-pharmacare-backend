class PharmacistSerializer < ActiveModel::Serializer
  attributes :name, :location, :contact, :gender
end
