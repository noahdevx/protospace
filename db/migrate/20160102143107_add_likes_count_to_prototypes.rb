class AddLikesCountToPrototypes < ActiveRecord::Migration
  def change
        add_column :prototypes, :likes_count, :integer, null: :false
  end
end
