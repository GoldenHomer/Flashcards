class DecksController < ApplicationController
	def index
		# Actions are methods that are used by routes
		@decks = Deck.all
		# Deck is the model name. If you have an instance variable in controller, you have one in view as well.
	end
# Strong parameters that replaces the deprecated attr_accessible (video is outdated)
	# def create
	# 	@deck = Deck.new(deck_params)
	# end

	# private
	# def deck_params
	# 	params.require(:deck).permit(:name)
	# end

	def show
		@deck = Deck.find(params[:id])
	end

	def new
		@deck = Deck.new
	end

	def create
		@deck = Deck.new(params[:deck])
		@deck.save
		redirect_to "/decks"
	end
end