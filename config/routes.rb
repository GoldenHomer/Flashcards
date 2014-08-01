Flashcards::Application.routes.draw do
  get "/decks" => "decks#index"
                    #ControllerName#ActionMethod 
                    #This is how Ruby parses this
  get "/decks/:id" => "decks#show"
  # :id is interpolation for multiple id numbers!
end
