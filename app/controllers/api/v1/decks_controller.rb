class Api::V1::DecksController < ApplicationController

    def index
        decks = Deck.all
        render json: decks
    end

    def show
        deck = Deck.find_by(id: params[:id])
        render json: deck
    end

    def create
        if logged_in?
            deck = logged_in_user.decks.build(deck_params)
            if deck.save
                render json: ActiveModelSerializers::SerializableResource.new(deck).to_json, status: :created
            else
                render json: deck.errors, status: :unprocessable_entity
            end
        else
            render json: {error: "You do not appear to be logged in."}
        end
    end

    def destroy
        if logged_in?
        deck = Deck.find_by(id: params[:id])
        deck.delete
    end

    private

    def deck_params
        params.require(:deck).permit(:name, :user_id)
    end
end
