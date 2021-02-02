# typed: false
# frozen_string_literal: true

Rails.application.routes.draw do

  root 'dogs#index'

  resources :dogs 
  # get 'dogs/index'
  # get 'dogs/show'
  # get 'dogs/new'
  # get 'dogs/edit'
  # get 'dogs/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/graphql", to: "graphql#execute"
end