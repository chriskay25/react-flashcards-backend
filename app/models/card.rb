class Card < ApplicationRecord
    belongs_to :deck, foreign_key: "deck_id"
end
