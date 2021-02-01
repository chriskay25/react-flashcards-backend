class Api::V1::DecksController < ApplicationController

    def index
        decks = Deck.all
    end

    private

    def deck_params
        params.require(:deck).permit(:name)
end
