Draftall::Application.routes.draw do
  # You can have the root of your site routed with "root"
  root 'games#new'
  
  resources :games
end
