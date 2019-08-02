class PostsController < ApplicationController
  before_action :authenticate_user!
  
  def new #새로운 글 작성
  end

  def create #글 생성하기 
    @post = Post.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    
    redirect_to "/posts/index"
  end

  def index #글 목록
     @post = Post.all
  end

  def show #특정글 보여주기 
      @post = Post.find(params[:id])
  end

  def edit #글 수정
      @post = Post.find(params[:id])
  end

  def update #글 수정하기 
      @post = Post.find(params[:id])
      @post.title = params[:title]
      @post.content = params[:content]
      @post.save
      
      redirect_to "/posts/index"
  end

  def destroy #글 삭제하기
      @post = Post.find(params[:id])
      @post.destroy
      
      redirect_to "/posts/index"
  end
end
