class OrdersController < ApplicationController
  def cart
    @user = current_user
    @orders = Order.where(:user => @user, :paid => false)
  end

  def create
    @product = Product.find(params[:product_id])
    @user = current_user
    @order = Order.where(product_id: @product.id, user_id: @user.id, paid: false)

    if @order.empty?

      Order.create(:user => @user, :product => @product, :quantity => 1, :paid => false)
    else
      @order[0].update(:quantity => @order[0].quantity+1)
    end
    redirect_to product_path(@product)
  end

  def destroy
    @order = Order.find(params[:id])
    if @order.quantity > 1
      @order.update(:quantity => @order.quantity-1)
    else
      @order.destroy
    end
    redirect_to cart_url
  end

  def checkout
    @user = current_user
    @orders = Order.where(:user => @user, :paid => false)
    @orders.each do |o|
      o.update(:paid => true)
    end
    redirect_to root_url
  end

  def all_orders
    @user = current_user
    @orders = Order.where(:user => @user, :paid => true)
  end
end
