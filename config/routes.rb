Rails.application.routes.draw do
  get 'billboards/index'
  get 'billboards/show'
  get 'billboards/edit'
  get 'billboards/new'
 root 'billboard#index'

 resources :billboard
end
