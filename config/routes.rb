Rails.application.routes.draw do
#   For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blogs
#   resources：RESTfulと呼ばれるメソッド
#   REST：REpresntational State Transfer　→　Webの設計思想の一つ
#   resourcesはとても便利なメソッド
#   この一つだけで、7つのメソッドを定義したのと同じ意味を持つ
#   ・index：リソースの一覧を表示する
#   ・new：リソースを新規作成する
#   ・create：リソースを新規作成して追加する
#   ・edit：リソースを更新するためのフォームを作成する
#   ・show：レコードの内容を表示する
#   ・update：リソースを更新する
#   ・destroy：リソースを削除する

end
