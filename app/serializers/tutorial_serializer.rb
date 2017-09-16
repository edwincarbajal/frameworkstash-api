class TutorialSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author, :url, :skill_level, :created_at, :total_likes, :framework

  belongs_to :framework

  def total_likes
    object.likes.count
  end
end
