Rails.application.routes.draw do
  scope "(:locale)", locale: /en|hu/ do
    devise_for :users
    resources :products, only: [:show, :index] do
      resources :comments
      resources :rates
      resources :orders
    end
    authenticate :user do
      post 'remove_from_wishlist/:id', to: 'wishlist#remove_product'
      post 'add_to_wishlist/:id', to: 'wishlist#add_product'
      get 'wishlist', to: 'wishlist#index'
      get 'cart/:id' => 'orders#destroy'
      get 'cart', to: 'orders#cart'
      get 'checkout', to: 'orders#checkout'
      get 'orders', to: 'orders#all_orders'
    end
    root 'main#index'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
