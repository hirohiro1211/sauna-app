Rails.application.routes.draw do
  devise_for :administrators, controllers: {
    sessions:      'administrators/sessions',
    passwords:     'administrators/passwords',
    registrations: 'administrators/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  get 'saunas/index'
 root to: "saunas#index"
end
