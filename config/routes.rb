Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'

  namespace :tool do

    namespace :convert do
      resources :bin_hex, path: 'bin-to-hex', only: [:new, :create], path_names: { new: '' }
    end

    namespace :encode_decode, path: 'encode-decode' do
      resources :base64, only: [:new, :create], path_names: { new: '' }
    end

    namespace :generate do
      resources :uuid, only: [:new, :create], path_names: { new: '' }
      resources :yes_no, path: 'yes-no', only: [:new, :create], path_names: { new: '' }
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
