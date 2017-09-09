class Framework < ApplicationRecord
  validates_presence_of :title, :description
  has_many :tutorials
end
