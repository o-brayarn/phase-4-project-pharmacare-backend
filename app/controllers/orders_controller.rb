class OrdersController < ApplicationController
  def index
    @orders = Order.all
    render json: @orders
  end

  def show
    @order = Order.find(params[:id])
    render json: @order, status: :ok, serializer: MedicineSerializer
  end

  def update
    @order = Order.find(params[:id])
    @order.update!(order_params)
    render json: @order, status: :accepted
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    head :no_content
  end

  private

  def order_params
    params.permit(:user_id, :medicine_id)
  end
end
