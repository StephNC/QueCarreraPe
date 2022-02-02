Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :careers do
    resources :reviews, only: [:new, :create]
    delete "/reviews/:id", to: "reviews#destroy", as: :delete_review
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
