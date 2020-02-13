Rails.application.routes.draw do
  
  get 'user/:id', to: 'show_user#profil', as: 'profil'
  root 'home_page#index'
  get 'welcome/:first_name', to: 'welcome#hello'
  get '/contact', to: 'aside#contact'
  get '/team', to: 'aside#team'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cities, only: [:show]
  resources :gossips do 
    resources :comments
    resources :likes
  end
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
