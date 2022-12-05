class MedicineSerializer < ActiveModel::Serializer
  attributes :name, :description, :pharmacist_id, :user_id
end
