Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: redirect('midi#show')

  get '/midi', to: 'midi#show'
  
  post '/midi/play', to: 'midi#play'
  
  post '/midi/record', to: 'midi#record'
end
