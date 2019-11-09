Rails.application.routes.draw do
  root 'items#index'
  get 'items' => 'items#index'
  get 'mypage' => 'mypages#index'
  get 'mypage/identification' =>'mypages#identification'
  get 'items/detail' => 'items#detail'
end