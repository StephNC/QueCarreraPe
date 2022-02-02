Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :careers
  resources :events do
    member do
      post "register"
    end
  end
  resources :institutions
end
