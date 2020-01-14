Rails.application.routes.draw do
  get 'home/index'
  get 'home/test'
  post 'home/test', to: 'home#run'
  root 'home#index'
end
