Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'

  namespace :tool do

    namespace :generate do
      resources :uuid, only: [:new, :create], path_names: { new: '' }
    end

    namespace :network do
      resources :ip_address, path: 'ip-address', only: [:new], path_names: { new: '' }
    end

    namespace :string do
      resources :length, only: [:new, :create], path_names: { new: '' }
      resources :trim, only: [:new, :create], path_names: { new: '' }
    end
  end
end
