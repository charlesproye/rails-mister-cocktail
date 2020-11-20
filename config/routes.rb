Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "cocktails#index", as: :cocktails
  resources :cocktails, only: [ :show, :create, :new, :destroy] do
    resources :doses, only: [ :create, :new, :destroy]
  end
end
