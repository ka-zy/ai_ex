Rails.application.routes.draw do
  get 'addresses/index'
  root to: "addresses#index"
  resources :addresses, only: [:index]
  resources :addresses do
    collection do
      get 'search'
    end
  end
end
