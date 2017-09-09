class AddDescriptionToFrameworks < ActiveRecord::Migration[5.1]
  def change
    add_column :frameworks, :description, :text
  end
end
