class WishlistController < ApplicationController
  def index
    @user = current_user
    @products= @user.products
  end

  def add_product
    @user = current_user
    @product = Product.find(params[:id])
    @vmi = @user.products << @product
    redirect_to product_path(@product)
  end

  def remove_product
    @user = current_user
    @product = Product.find(params[:id])
    @user.products.delete(@product)
    if params[:from] == "wl"
      redirect_to wishlist_path
    else
      redirect_to product_path(@product)
    end
  end

end
