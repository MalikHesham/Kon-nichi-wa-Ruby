Rails.application.routes.draw do
  devise_for :users
  
  resource :users, only: [:create]
  post '/login', to: 'users#login'
  get '/auto_login', to: 'users#auto_login'

  get 'api/articles/:id', to: 'articles#api_show'

  get 'welcome/index'
  root 'welcome#index'


  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
