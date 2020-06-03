Rails.application.routes.draw do
  #ユーザー一覧
  get "/", to: "users#index", as: :users

  #新規登録
  get "/new", to: "users#new", as: :new
  post "/create", to: "users#create", as: :create

  #ユーザー詳細
  get "/show/:id", to: "users#show", as: :show

  #編集
  get "/edit/:id", to: "users#edit", as: :edit
  post "/update/:id", to: "users#update", as: :update

  #削除
  post "/destroy/:id", to: "users#destroy", as: :destroy
end
