Rails.application.routes.draw do


#begin translate 
# config/routes.rb
scope "(:locale)", locale: /en|de/ do
  resources :apps
end
# config/routes.rb
Rails.application.routes.draw do
  root to: "apps#index"
end
# end translate 

  devise_for :users
  resources :categories
  resources :apps do
  	resources :reviews
  end
  #root 'apps#index'

	resources :apps do
    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
  end
  
end
