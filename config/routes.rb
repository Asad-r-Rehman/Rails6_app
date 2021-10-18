Rails.application.routes.draw do
  get '/index', to: 'logins#index'
  get 'about' , to: 'logins#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
