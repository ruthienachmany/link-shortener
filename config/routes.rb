LinkShortener::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  root :to => 'links#new'
  ActiveAdmin.routes(self)

  resources :links

  get '/links/:id', to: 'links#show', as: 'link'
  post '/links', to: 'links#create', as: 'links'
  match ':short_link' => 'links#go'
  
end
