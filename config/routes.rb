Rails.application.routes.draw do
  resources :listings
  root to: redirect('/about')
  get '/listings', to: 'listings#index'

  get '/listings/:id/edit', to: 'listings#edit'

  get '/privacy_policy', to: 'pages#privacy_policy'

  get '/help', to: 'pages#help'

  get '/faq', to: 'pages#faq'

  get '/contact', to: 'pages#contact'

  get '/about', to: 'listings#index'

  resources :listings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
