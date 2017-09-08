class Like < ApplicationRecord
  validates_presence_of :value, :tutorial

  belongs_to :tutorial
end
