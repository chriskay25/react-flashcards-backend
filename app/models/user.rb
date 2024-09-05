class User < ApplicationRecord
    has_secure_password
    has_many :decks, dependent: :destroy
    has_many :cards, through: :decks
end
