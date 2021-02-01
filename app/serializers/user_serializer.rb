class UserSerializer < ActiveModel::Serializer
  attributes :id, :password
  has_many :decks, foreign_key: "reference_id"
end
