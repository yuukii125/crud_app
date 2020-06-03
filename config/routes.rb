Rails.application.routes.draw do
  #ユーザー一覧
  get "/", to: "users#index", as: :users

  #新規登録
  get "/users/new", to: "users#new", as: :new
  post "/users", to: "users#create", as: :create

  #ユーザー詳細
  get "/users/:id", to: "users#show", as: :show

  #編集
  get "/users/:id/edit", to: "users#edit", as: :edit
  post "/users/:id", to: "users#update", as: :update

  #削除
  post "/users/:id", to: "users#destroy", as: :destroy
end
