Rails.application.routes.draw do

devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end

devise_for :social_users, controllers: { omniauth_callbacks: 'social_users/omniauth_callbacks' }
devise_for :users

root 'mypages#index'

get 'items' => 'items#index'
post 'items' => 'items#pay'
  resources :signup do
    collection do
    get 'wizard1'
    get 'wizard2'
    get 'wizard3'
    get 'wizard4' # ここで、入力の全てが終了する
    get 'wizard5'
    get 'wizard6'
    get 'endpage' # 登録完了後のページ
    end
  end
  
  get  'buy'=>  'items#buy'
     
    
  resources :cards, only: [:index, :create, :new]
  resources :items_login, only: [:index]
  resources :login, only: [:index, :create]
  resources :logout, only: [:index]
  resources :posts
  

  get 'sells' => 'sells#index'
  resources :mypages, only: :index do
    collection do
     get 'identification'
    end
  end

end
