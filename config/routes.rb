Rails.application.routes.draw do
  #ユーザー一覧
  get "/", to: "users#index", as: :users

  #新規登録
  get "/new", to: "users#new", as: :new
  post "/create", to: "users#create", as: :create
end
