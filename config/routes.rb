Rails.application.routes.draw do

  
devise_for :users
  root 'items#index'

  
  resources :signup do
    collection do
      get 'step1'
      get 'step2'
      get 'step3'
      get 'step4' # ここで、入力の全てが終了する
      get 'step5'
      get 'step6'
      get 'done' # 登録完了後のページ
    end
  end

  resources :posts

  get 'sells' => 'sells#index'
  resources :mypages, only: :index do
    collection do
     get 'identification'
    end
  end

end
