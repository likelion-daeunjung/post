class CommentsController < ApplicationController
  def create
    @comment = Comment.create(user_name: params[:user_name], body: params[:body], post_id: params[:post_id])
    
    redirect_to request.referrer
  end
end

