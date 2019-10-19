Rails.application.routes.draw do

  root 'mypages#index'
  get 'items' => 'items#index'
  get 'sells' => 'sells#index'

end
