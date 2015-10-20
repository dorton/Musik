Rails.application.routes.draw do
  mount Payola::Engine => '/payola', as: :payola
  get 'users/new'

  get 'users/:id/profile' => 'users#profile'

  get '/sign_in' => 'sessions#new', as: :sign_in
  post '/sign_in' => 'sessions#create'
  delete '/sign_out' => 'sessions#delete', as: :sign_out

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  get 'subscriptions/new' => 'subscriptions#new'
  post 'subscriptions' => 'subscriptions#create'
  resources :subscriptions
end
