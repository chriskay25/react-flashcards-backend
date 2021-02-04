class Api::V1::DecksController < ApplicationController

    def index
        decks = Deck.all
        render json: decks
    end

    def show
        deck = Deck.find_by(id: params[:id])
        render json: deck
    end

    private

    def deck_params
        params.require(:deck).permit(:name, :user_id)
    end
end
