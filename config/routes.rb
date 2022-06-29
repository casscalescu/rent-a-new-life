Rails.application.routes.draw do
  get 'islands/new'
  get 'islands/create'
  get 'islands/show'
  get 'islands/edit'
  get 'islands/update'
  get 'islands/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
