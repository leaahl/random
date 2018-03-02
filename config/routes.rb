Rails.application.routes.draw do
  resources :users
  resources :categories
  root to: 'listings#index'

  resources :listings do
    collection do
      get :autocomplete
    end
  end

  get '/privacy_policy', to: 'pages#privacy_policy'

  get '/help', to: 'pages#help'

  get '/faq', to: 'pages#faq'

  get '/contact', to: 'pages#contact'

  get '/about', to: 'listings#index'

  get '/user', to: 'users#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
