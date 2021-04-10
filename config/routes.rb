Rails.application.routes.draw do
  resources :images
  resources :physicals
  resources :digitals
  resources :products
  resource :cart, only: [:show, :update] do
    member do
      post :pay_with
      get  :process_payment
    end
  end
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
