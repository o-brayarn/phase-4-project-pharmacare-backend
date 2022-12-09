class MedicineCatalogueSerializer < ActiveModel::Serializer
  attributes :name, :description, :image_url
end
