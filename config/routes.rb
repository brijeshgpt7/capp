Rails.application.routes.draw do
  get 'scrapes/index'
  resources :contacts
end
