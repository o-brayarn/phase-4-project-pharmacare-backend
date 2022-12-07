class PharmacyMedicinesSerializer < ActiveModel::Serializer
  attributes :name, :location, :email, :address
  has_many :medicines
end
