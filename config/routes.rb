Rails.application.routes.draw do
   devise_for :users, :skip => [:sessions, :passwords, :registrations]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1, defaults: {format: :json} do
    resources :sessions
    resources :products, only: [:index] do
      collection do
        get :cart_products
      end
      member do
        post :add_to_cart
      end
    end
  end
end
