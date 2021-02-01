class DeckSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :user, foreign_key: "user_id"
  has_many :cards
end
