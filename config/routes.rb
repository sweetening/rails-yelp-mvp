Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end

# GET "restaurants"
# She/He can add a new restaurant, and be redirected to the show view of that new restaurant.
# GET "restaurants/new"
# POST "restaurants"
# She/He can see the details of a restaurant, with all the reviews related to the restaurant.
# GET "restaurants/38"
# She/He can add a new review to a restaurant
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"
