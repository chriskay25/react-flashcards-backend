class Api::V1::CardsController < ApplicationController

    def index
        cards = Card.all
        render json: cards
    end

    private

    def card_params
        params.require(:card).permit(:question, :answer, :hint, :collection_id)
    end
end
