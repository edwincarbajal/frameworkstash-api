class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :value
      t.references :tutorial, foreign_key: true

      t.timestamps
    end
  end
end
