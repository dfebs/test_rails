Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :products # This does the same the get/post/put/patch/delete stuff commented out below 
  root "products#index"
  #   get "/products", to: "products#index"

  #   get "/products/new", to: "products#new"
  #   post "/products", to: "products#create"

  #   get "/products/:id", to: "products#show"

  #   get "/products/:id/edit", to "products#edit"
  #   put "/products/:id", to "products#update"
  #   patch "/products/:id", to "products#update"

 #   delete "/products/:id", to: "products#destroy"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
