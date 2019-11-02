Rails.application.routes.draw do

  root 'items#index'
  get 'items' => 'items#index'
  get "items/new" => "items#new"
  get 'mypages' => 'mypages#index'
  post 'items' => 'items#create'
  resources :items do
    resources :images
  end

end
