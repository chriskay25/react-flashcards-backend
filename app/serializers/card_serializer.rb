class CardSerializer < ActiveModel::Serializer
  attributes :id, :question, :answer, :hint
end
