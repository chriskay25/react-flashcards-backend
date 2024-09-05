class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password
  has_many :decks, foreign_key: "reference_id"
end
