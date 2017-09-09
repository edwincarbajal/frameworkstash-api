class FrameworkSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :total_tutorials

  def total_tutorials
    object.tutorials.all.count
  end
end
