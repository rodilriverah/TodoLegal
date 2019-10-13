Rails.application.routes.draw do
  devise_for :users
  resources :law_tags
  resources :tags
  resources :tag_types
  resources :laws
  resources :titles
  resources :chapters
  resources :articles

  root :to => "home#index"
  get '/search_law', to: 'home#search_law'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
