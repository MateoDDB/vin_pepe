Rails.application.routes.draw do
  root 'pages#about'
  resources :recettes do
    resources :ingredients, only: [ :index, :new, :create ]
  end
  resources :ingredients, only: [ :show, :edit, :update, :destroy ]
  resources :bouteilles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
