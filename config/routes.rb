Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get '/', to: 'welcome#index'
  get '/meditations/equal_lengths', to: 'equal_lengths#show'
  get 'restart', to: 'equal_lengths#restart'
end
