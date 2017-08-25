Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  get 'chat' => 'rooms#show'

  get 'home/index'
  root 'home#index'
  get '/all' => 'home#all'
  get '/mungwa' => 'home#mungwa'
  get '/major' => 'home#major'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
