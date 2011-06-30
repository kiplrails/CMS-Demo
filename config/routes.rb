CmsDemo::Application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :companies do
      resources :drivers
    end
  end

  resources :companies, :only => [:index, :show]
  resources :drivers, :only => [:show]

  root :to => "home#index"
end
