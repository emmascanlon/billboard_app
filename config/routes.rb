Rails.application.routes.draw do
  get 'songs/index'
  get 'songs/show'
  get 'songs/new'
  get 'songs/edit'
 root 'billboards#index'

 resources :billboards
 resources :artists
end
