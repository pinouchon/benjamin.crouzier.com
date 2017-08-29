Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  #match '/codemonkey' => redirect {|params, req| "https://www.linkedin.com/in/gearnode/"},  via: [:get, :post]
end
