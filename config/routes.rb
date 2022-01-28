Rails.application.routes.draw do
  resources :restaurants do

    # Collection
    collection do
      get 'top'
    end

    # Member
    member do
      get 'chef'
    end

    resources :reviews, only: %i[new create]
  end
    resources :reviews, only: %i[destroy]
end
