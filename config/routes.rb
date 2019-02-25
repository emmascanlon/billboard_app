Rails.application.routes.draw do
 root 'billboards#index'
 devise_for :user

 resources :billboards
 resources :artists do 
  resources :songs
 end
end
