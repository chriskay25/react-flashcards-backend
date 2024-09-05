class Deck < ApplicationRecord
    belongs_to :user, foreign_key: "user_id"
    has_many :cards, dependent: :destroy
end
