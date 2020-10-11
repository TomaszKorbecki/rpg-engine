Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  namespace :game_masters do
    resources :universes do
      resources :adventures, module: "universes"
    end
  end
end
