Rails.application.routes.draw do

devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end

devise_for :social_users, controllers: { omniauth_callbacks: 'social_users/omniauth_callbacks' }
devise_for :users

root 'items#index'

resources :items

resources :signup do
  collection do
  get 'user_data'
  get 'telephone_number'
  get 'telephone_auther'
  get 'address' # ここで、入力の全てが終了する
  get 'pay'
  get 'endpage' # 登録完了後のページ
  end
end


resources :cards, only: [:index, :create, :new]
resources :items_login, only: [:index]
resources :login, only: [:index, :create]
resources :logout, only: [:index]
resources :posts



resources :mypages, only: [:index, :destroy, :edit, :update] do
  collection do
    get 'mypage_exhibit'
    get 'mypage_sold'
    get 'mypage_transaction'
    get 'mypage_buy_transaction'
    get 'mypage_buy_transaction_past'
  end
  member do
    get 'identification'
  end
end

get  'buy/:id'=>  'items#buy', as: 'buy'
post 'pay/:id'=>   'items#pay', as: 'pay'
get 'sells' => 'sells#index'
get 'items/detail' => 'items#detail'
get 'commodity/:id' => 'mypages#commodity'
get 'items' => 'items#index'
get "items/new" => "items#new"
post 'items' => 'items#create'
get 'show/:id' => 'items#show'
get "items/:id/edit" => "items#edit"
get "after/:id" => "items#after",as: 'after'
delete 'items/:id' => 'items#destroy'
end
