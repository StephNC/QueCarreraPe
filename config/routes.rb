Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :careers do
    resources :reviews, only: [:new, :create]
    delete "/reviews/:id", to: "reviews#destroy", as: :delete_review
  end
    
  resources :events do
    member do
      post "register"
    end
  end
  
  resources :institutions

end
