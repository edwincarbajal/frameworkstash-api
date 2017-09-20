class Tutorial < ApplicationRecord
  validates_presence_of :title, :description, :author, :url, :skill_level, :framework

  belongs_to :framework, dependent: :destroy
  has_many :likes


  scope :desc, -> { order(created_at: :desc) }

  scope :trending, -> {
                        joins(:likes).
                        group('tutorials.id').
                        having('likes_count >= 5').order('likes_count DESC').limit(5)
                      }
end
