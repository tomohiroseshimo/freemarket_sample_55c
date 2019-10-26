# Rails.application.routes.draw do
#   get 'items' => 'items#index'
#   root 'mypages#index'
# end

Rails.application.routes.draw do
  root 'items#index'
  get 'items' => 'items#index'
  get 'mypage' => 'mypages#index'
  get 'mypage/identification' =>'mypages/identification'
end