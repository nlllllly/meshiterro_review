Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'post_images#index'

  # post_images の子としてpost_commnetsがリレーションされることになるので、ルーティングはもこのようになる。（ネストする）
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end
