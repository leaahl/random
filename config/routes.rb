Rails.application.routes.draw do
  get '/about', to: 'pages#about'

  get 'pages/privacy_policy'

  get '/help', to: 'pages#help'

  get '/faq', to: 'pages#faq'

  get '/contact', to: 'pages#contact'

  get '/message'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
