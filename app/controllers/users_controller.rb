class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @post = @user.posts
    hash1 = @post.select(:textBox1).sum(:textBox1)
    hash2 = @post.select(:textBox2).sum(:textBox2)
    hash3 = @post.select(:textBox3).sum(:textBox3)
    hash4 = @post.select(:textBox4).sum(:textBox4)
    hash5 = @post.select(:textBox5).sum(:textBox5)
   @chart ={ "1:朝、お薬は飲みましたか？" => hash1, "２:運動は、しましたか？" => hash2, "3:昼、お薬は飲みましたか？" => hash3, "4:歯磨きは、しましたか？" => hash4, "5:夜、お薬は飲みまいしたか？" => hash5 }
    
   
  end

  def destroy_all
    @user = User.find(params[:id])
    @post = @user.posts
    @post.destroy_all
  end

  
end
