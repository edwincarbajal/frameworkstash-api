class TutorialSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author, :url, :skill_level, :created_at, :updated_at, :framework

  belongs_to :framework
  has_many :likes
end
