class Api::V1::CardsController < ApplicationController

    def index
        cards = Card.all
        render json: cards
    end

    def create
        if logged_in?
            deck = logged_in_user.decks.find_by(id: params[:deck_id])
            card = deck.cards.build(card_params)
            if card.save
                render json: ActiveModelSerializers::SerializableResource.new(card).to_json, status: :created
            else
                render json: card.errors, status: :unprocessable_entity
            end
        else
            render json: {error: "You do not appear to be logged in."}
        end
    end

    def update
        if logged_in?
            card = Card.find_by(id: params[:id])
            card.update(card_params)
            render json: ActiveModelSerializers::SerializableResource.new(card).to_json, status: :ok
            # binding.pry
        end
    end

    private

    def card_params
        params.require(:card).permit(:question, :answer, :hint, :deck_id)
    end
end
