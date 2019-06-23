class CommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @user = current_user
    @date = DateTime.now.to_date
    @comment = @product.comments.create(:user => @user, :product => @product, :commentDate => @date, :body => comments_params["body"] )
    # render plain: @comment.as_json
    redirect_to product_path(@product)
  end


  private def comments_params
    params.require(:comment).permit(:body)
  end



end
