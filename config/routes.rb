Rails.application.routes.draw do

  devise_for :users
  resources :categories
  resources :apps do
  	resources :reviews
  end
  root 'apps#index'

	resources :apps do
    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
  end
  
end
