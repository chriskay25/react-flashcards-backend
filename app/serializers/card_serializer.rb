class CardSerializer < ActiveModel::Serializer
  attributes :id, :question, :answer, :hint, :deck_id
  belongs_to :deck, foreign_key: "deck_id"
end
