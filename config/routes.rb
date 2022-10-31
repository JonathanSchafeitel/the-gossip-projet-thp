require 'bundler'
Bundler.require

Rails.application.routes.draw do
  get 'edit/gossip_edit', to: 'edit#gossip_edit'
  
  #Page de contact
  get '/contact', to: 'static_pages#contact'
  #Page de Team
  get '/team', to: 'team#team'
  #Index
  root 'gossips#index'
  #Acceuil
  get '/', to: 'gossips#index'
  #Nouveau potin
  get 'gossips/new', to: 'gossips#new'
  #Page Team
  get 'gossips/team', to: 'gossips#teams'
  #Page dynamique
  get 'message/:user_entry', to: 'message#show'

  
end
