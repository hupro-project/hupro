Rails.application.routes.draw do
  get '/',to:'home#index'
  get '/flow',to:'home#flow'

  devise_for :users
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
