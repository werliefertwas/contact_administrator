Rails.application.routes.draw do
  namespace :admin do
    get 'contacts_list' => 'dashboard#contacts'
  end
  resources :contacts, only: [:new, :show, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'contacts#new'
end
