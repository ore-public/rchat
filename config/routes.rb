Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/create'

  root to: 'welcome#index'

  devise_for :users, controllers: {
                       omniauth_callbacks: "users/omniauth_callbacks"
                   }
  resources :home, only: %i(index)
  resources :rooms, only: %i(index create destroy update) do
    resources :comments, only: %i(index create)
  end

end
