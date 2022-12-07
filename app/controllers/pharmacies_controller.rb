class PharmaciesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  before_action :authorize
  def index
    @pharmacies = Pharmacy.all
    render json: @pharmacies
  end
end
