Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
end

# rails generate model Restaurant name:string address:string phone_number:string category:string
# rails db:migrate
# rails generate model Review rating:integer content:string restaurant:references
# rails db:migrate
