Rails.application.routes.draw do


    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #devise
  devise_for :admins, controllers: {
    sessions: 'admin/sessions'
  }
  devise_for :members, controllers: {
    sessions: 'members/sessions'
  }

  # top
  root "members/home#top"
  # post '/home/guest_sign_in', to: 'homes#guest_sign_in'
  get "/about", to: "members/home#about", as: "about"

  # guest
  devise_scope :member do
    post 'guest_sign_in', to: 'members/sessions#guest_sign_in'
  end

  # member
  namespace :members do
    resources :ideas
    resources :member
    resources :good
  end

  #search

  # admin
  namespace :admin do
    root "home#top"
    resources :member
    resources :category
    resources :ideas
  end




end
