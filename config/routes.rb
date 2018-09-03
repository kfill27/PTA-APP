Rails.application.routes.draw do
  get 'home/welcome'
  root to: "home#welcome"

  devise_for :users
  
  resources :memberships
  resources :students do
    collection {post :import}
  end
  resources :teachers do
    collection {post :import}
  end
end
