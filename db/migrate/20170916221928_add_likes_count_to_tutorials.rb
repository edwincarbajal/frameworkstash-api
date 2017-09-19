class AddLikesCountToTutorials < ActiveRecord::Migration[5.1]
  def change
    add_column :tutorials, :likes_count, :integer, default: 0

    reversible do |dir|
      dir.up { data }
    end
  end

  def data
    execute <<-SQL.squish
        UPDATE tutorials
           SET likes_count = (SELECT count(1)
                                   FROM likes
                                  WHERE likes.tutorial_id = tutorials.id)
    SQL
  end
end
