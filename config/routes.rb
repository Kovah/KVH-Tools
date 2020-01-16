Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'

  namespace :tool do

    namespace :string do
      resources :length, only: [:new, :create], path_names: { new: '' }
      resources :trim, only: [:new, :create], path_names: { new: '' }
    end
  end
end
