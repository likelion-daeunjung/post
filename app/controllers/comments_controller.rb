class CommentsController < ApplicationController
  def create
    
    @post = Post.find(params[:post_id])
    
    @comment = @post.comments.create(body: params[:body], user_name: params[:user_name])
    
    respond_to do |format|
      format.js
    end

    # redirect_to request.referrer
  end
end

