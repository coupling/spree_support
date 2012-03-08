Spree::Core::Engine.routes.prepend do
  namespace :admin do
    resources :download_categories
    resources :downloads
  end

  resources :downloads
end
