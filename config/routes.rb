Rails.application.routes.draw do
  resources :userlists, only: [:new, :create, :show]
end
