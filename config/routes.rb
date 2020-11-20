Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home', as: :home
  resources :cocktails do
    collection do
      post :search
    end
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: :destroy
end
