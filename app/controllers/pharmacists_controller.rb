class PharmacistsController < ApplicationController
  def index
    @pharmacists = Pharmacist.all
    render json: @pharmacists
  end
end
