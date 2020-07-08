class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  def create
    Comment.create(comment_params)
  end
  def edit
    @comments = Comment.find(params[:id])
  end

  def show
    @comments = Comment.find(params[:id])
  end
  def update
    @comments = Comment.find(params[:id])
    @comments.update(comment_params)
  end
  private
  def comment_params
    params.require(:comment).permit(:textBox1comment, :textBox2comment, :textBox3comment, :textBox4comment, :textBox5comment).merge(user_id: current_user.id)
  end
end
