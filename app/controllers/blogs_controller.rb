class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @blog = Blog.new
    # 空のインスタンスをViewに渡す
    # 新規データ登録用のblogインスタンスを、Blogモデルから作成する
    # Blog.newと記述すると、空のモデルが生成される
    # インスタンス変数を書いた空のモデルを渡すと、フォームとBlogモデルが関連づけられる
  end

  def create
  end

  def edit
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
    # フォームから送られてきた投稿を、createアクションに保存する処理
    # Strong Parametersを使うと、フォームからのデータを受け取れるようになる。
    # とても大切！　→　覚えておこう
  end
end
