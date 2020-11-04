Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#match "characters/order" => "characters#sort_by", via: [:get]
resources :movies, :characters

get 'order/characters', to: 'characters#sort_by', as: 'order'

end
