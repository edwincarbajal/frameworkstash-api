class LikeSerializer < ActiveModel::Serializer
  attributes :id, :value

  belongs_to :tutorial
end
