Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :careers
  resources :events do
    member do
      post "register"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
