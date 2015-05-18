Rails.application.routes.draw do
  root to: 'welcome#index'

  devise_for :users, controllers: {
                       omniauth_callbacks: "users/omniauth_callbacks"
                   }
  resources :home, only: %i(index)
end
