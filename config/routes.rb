Rails.application.routes.draw do


    devise_for :users
 
    get "profiles/:id" => "profiles#show", as: :profile

    get "profiles" => "profiles#index"

    resources :tweets
    
    resources :relationships

    root "tweets#index"
end