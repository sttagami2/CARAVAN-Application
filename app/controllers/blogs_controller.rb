class BlogsController < ApplicationController
  
  def show
  end

  def index
    @blogs = Blog.all
    # @blogsはインスタンス変数であり、取得したデータをViewに渡す役目
    # Blog.allはblogsテーブルから全てのデータを取得し、インスタンス変数@blogsに代入する役目
  end
  
  def new
    @blog = Blog.new
    # 空のインスタンスをViewに渡す
    # 新規データ登録用のblogインスタンスを、Blogモデルから作成する
    # Blog.newと記述すると、空のモデルが生成される
    # インスタンス変数を書いた空のモデルを渡すと、フォームとBlogモデルが関連づけられる
  end

  def create
    blog = Blog.new(blog_params)
    blog.save
    redirect_to blogs_path
  end

  def edit
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
    # フォームから送られてきた投稿を、createアクションに保存する処理
    # Strong Parametersを使うと、フォームからのデータを受け取れるようになる。
    # とても大切！ → 覚えておこう
  end
end
