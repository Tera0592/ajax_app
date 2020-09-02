class PostsController < ApplicationController
  def index  # indexアクションを定義した
    @posts = Post.all.order(id: "DESC")  # すべてのレコードを@postsに代入
  end
  #new actionは不要なため削除
  # def new
  # end
  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end
