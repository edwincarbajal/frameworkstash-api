class Framework < ApplicationRecord
  validates_presence_of :title
  has_many :tutorials
end
