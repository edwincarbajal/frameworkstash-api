class Tutorial < ApplicationRecord
  validates_presence_of :title, :description, :author, :url, :skill_level, :framework

  belongs_to :framework
  has_many :likes
end
