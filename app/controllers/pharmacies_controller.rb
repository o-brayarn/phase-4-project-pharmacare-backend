class PharmaciesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  # before_action :authorize
  # skip_before_action :authorize, only: [:index, :show]

  def index
    @pharmacies = Pharmacy.all
    render json: @pharmacies, status: :ok
  end

  def show
    @pharmacy = Pharmacy.find(params[:id])
    render json: @pharmacy, status: :ok, serializer: PharmacyMedicinesSerializer
  end

  private

  def authorize
    return render json: { errors: ["Not authorized"] }, status: :unauthorized unless session.include? :user_id
  end

  def render_not_found_response(invalid)
    render json: { errors: invalid }, status: :not_found
  end
end
