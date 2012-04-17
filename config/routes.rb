Spree::Core::Engine.routes.prepend do
  namespace :admin do
    resources :article_categories
    resources :articles
  end

  resources :articles
end
