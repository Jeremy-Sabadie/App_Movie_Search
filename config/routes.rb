Rails.application.routes.draw do
  get 'movies/search'

  root 'movies#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
