Rails.application.routes.draw do

  root 'items#index'
  get 'items' => 'items#index'
  get "/items/new" => "items#new"
  get 'mypages' => 'mypages#index'
  post 'items' => 'items#create'

end
