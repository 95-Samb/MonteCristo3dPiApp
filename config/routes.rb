Rails.application.routes.draw do
  resources :pi_estimators
  root "pi_estimators#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
