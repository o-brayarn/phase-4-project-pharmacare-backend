class PharmaciesController < ApplicationController
  def index
    @pharmacies = Pharmacy.all
    render json: @pharmacies
  end
end
