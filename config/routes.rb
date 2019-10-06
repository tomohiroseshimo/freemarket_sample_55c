Rails.application.routes.draw do

  
  
  get 'items' => 'items#index'
  root 'mypages#index'

end
