# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :articles, except: %i[create new]
    root 'articles#index'
  end
  get 'articles/mine', to: 'articles#mine', as: :my_articles
  root 'articles#index'
  resources :articles
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
