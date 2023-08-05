Rails.application.routes.draw do

  get 'users/index'
  get 'users/show'
  get 'users/edit'
devise_for :users
root to: "homes#top"
get "homes/about" => "homes#about", as: "about"

resources :books, only: [:new, :create, :index, :show, :edit]
end
