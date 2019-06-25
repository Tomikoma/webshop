class RatesController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @user = current_user
    @rate = Rate.where(product_id: @product.id, user_id: @user.id)

    if @rate.empty?
      @product.rates.create(:user => @user, :product => @product, :rating => rating_params["rating"])
    else
      @rate.update(rating: rating_params["rating"])
    end
    redirect_to product_path(@product)

    #@rate = @product.rates.first_or_create(:user => @user, :product => @product, :rating => rating_params["rating"])
    #render plain: @rate.as_json
    #redirect_to product_path(@product)
  end


  private def rating_params
    params.require(:rate).permit(:rating)
  end
end
