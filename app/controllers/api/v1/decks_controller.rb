class Api::V1::DecksController < ApplicationController

    def index
        decks = Deck.all
        render json: decks
    end

    private

    def deck_params
        params.require(:deck).permit(:name, :user_id)
    end
end
