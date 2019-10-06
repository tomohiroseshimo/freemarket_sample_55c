Rails.application.routes.draw do

  root 'mypages#index'
  get 'items' => 'items#index'


end
