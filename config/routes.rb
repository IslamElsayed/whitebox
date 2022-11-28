# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :projects, except: [:destroy] do
    resources :tasks, except: [:destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'projects#index'
end
