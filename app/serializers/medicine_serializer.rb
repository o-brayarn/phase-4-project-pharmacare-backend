class MedicineSerializer < ActiveModel::Serializer
  attributes :name, :image_url, :description, :pharmacy_id
end
