class CardSerializer < ActiveModel::Serializer
  attributes :id, :question, :answer, :hint
  belongs_to :deck, foreign_key: "deck_id"
end
