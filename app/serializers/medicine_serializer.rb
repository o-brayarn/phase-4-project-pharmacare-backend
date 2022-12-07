class MedicineSerializer < ActiveModel::Serializer
  attributes :name, :image_url, :description
  belongs_to :Pharmacy
end
