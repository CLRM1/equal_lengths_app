Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match "*path" => redirect("https://www.micromeditations.org/%{path}"), :constraints => { :protocol => "http://" }
  match "*path" => redirect("https://www.micromeditations.org/%{path}"), :constraints => { :subdomain => "" }
  root 'meditations#index'
  get '/meditations', to: 'meditations#index'
  get '/meditations/equal_lengths', to: 'equal_lengths#show'
  get '/meditations/square_breathing', to: 'square_breathing#show'
  get '/meditations/three_senses', to: 'three_senses#show'
  get '/meditations/light_stream', to: 'light_stream#show'
  get '/meditations/light_stream/restart', to: 'light_stream#restart'
  get '/meditations/three_senses/restart', to: 'three_senses#restart'
  get '/meditations/equal_lengths/restart', to: 'equal_lengths#restart'
  get '/meditations/square_breathing/restart', to: 'square_breathing#restart'
  get 'restart', to: 'restart#restart'
end
