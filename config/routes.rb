CmsDemo::Application.routes.draw do
  namespace :admin do
    resources :companies do
      resources :drivers
    end
  end
end
