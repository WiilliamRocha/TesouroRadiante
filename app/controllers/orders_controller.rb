class OrdersController < ApplicationController
    def create
      @order = current_user.orders.build(product_id: params[:product_id])
      if @order.save
        redirect_to root_path, notice: 'Compra realizada com sucesso!'
      else
        redirect_to products_path, alert: 'Ocorreu um erro ao realizar a compra.'
      end
    end
  end
