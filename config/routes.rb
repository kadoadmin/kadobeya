Rails.application.routes.draw do
  
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"}
  root to: "homes#top" 
  get '/about' => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :equipments, only: [:index, :create, :edit, :update, :destroy, :new]

end
