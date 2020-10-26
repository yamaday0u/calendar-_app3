class BlogsController < ApplicationController
  before_action :authenticate_user

  def index
   @blogs = Blog.where(family_id: @current_user.family_id)
  end

  def new
   @blog = Blog.new
  end

  def show
   @blog = Blog.find(params[:id])
  end

  def create
   @blog = Blog.create(blog_parameter)
   redirect_to("/blogs/index/#{@blog.user_id}")
  end

  def destroy
   @blog = Blog.find(params[:id])
   @blog.destroy
   redirect_to blogs_path, notice:"削除しました"
  end

  def edit
   @blog = Blog.find(params[:id])
  end

  def update
   @blog = Blog.find(params[:id])
   if @blog.update(blog_parameter)
     redirect_to blogs_path, notice: "編集しました"
   else
     render 'edit'
   end
  end

  private

  def blog_parameter
   params.require(:blog).permit(:title, :content, :start_time, :end_time, :user_name, :user_id, :family_id)
  end
end
