Rails.application.routes.draw do
  resources :categories
  resources :items do
    collection do
      get 'search'
      get 'results'
    end
  end
  root 'items#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
