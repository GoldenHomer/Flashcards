Flashcards::Application.routes.draw do
  get "/decks" => "decks#index"
                    #ControllerName#ActionMethod 
                    #This is how Ruby parses this
  get "decks/new" => "decks#new"
  get "/decks/:id" => "decks#show"
  # :id is interpolation for multiple id numbers!

  #Also, routes in Rails are order specific from top to bottom.
  post "/decks" => "decks#create"
end
