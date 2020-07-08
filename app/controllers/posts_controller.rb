class PostsController < ApplicationController
  before_action :sign_in_required, only: [:index]
  
  
  def index
  end

  def new
    @post = Post.new
  end

  def create  
    Post.create(post_params)
  end

  


  private
  def post_params
    params.require(:post).permit(:textBox1, :textBox2, :textBox3, :textBox4, :textBox5).merge(user_id: current_user.id)
  end

end
