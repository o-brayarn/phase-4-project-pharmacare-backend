class MedicinesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    @medicines = Medicine.all
    render json: @medicines
  end

  def show
    @medicine = Medicine.find(params[:id])
    render json: @medicine
  end

  private

  def render_not_found_response(invalid)
    render json: { errors: invalid }, status: :not_found
  end
end
