Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :pictures do
    resources :comments
    resources :up_votes
  end

  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
