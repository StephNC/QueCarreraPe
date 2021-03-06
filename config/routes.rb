Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/test", to: "pages#test"

  resources :careers do
    resources :reviews, only: [:create]
    delete "/reviews/:id", to: "reviews#destroy", as: :delete_review

    resources :career_institutions, only: [:new, :create]
  end
  resources :career_institutions, only: [:show, :edit, :update, :destroy]

  resources :events do
    member do
      post "register"
    end
  end

  resources :institutions

  resources :booking_requests, only: [:index, :show, :destroy]
end
