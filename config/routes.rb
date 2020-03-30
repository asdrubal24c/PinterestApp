Rails.application.routes.draw do
  devise_for :users
  resources :pins do
    delete 'delete_image/:image_id', on: :member, to: 'pins#delete_image', as: 'delete_image'
    end
    
  get 'pages/contact'
  get 'pages/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pins#index'
end
