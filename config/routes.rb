Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get '/', to: 'welcome#index'
  get '/meditations/equal_lengths', to: 'equal_lengths#show'
  get '/meditations/square_breathing', to: 'square_breathing#show'
  get '/meditations/equal_lengths/restart', to: 'equal_lengths#restart'
  get '/meditations/square_breathing/restart', to: 'square_breathing#restart'
  get 'restart', to: 'restart#restart'
end
