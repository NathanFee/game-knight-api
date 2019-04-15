class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :score, :wins, :loses
end
