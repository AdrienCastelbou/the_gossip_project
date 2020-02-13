class RemoveLike < ActiveRecord::Migration[5.2]
  def change
    remove_column :gossips, :like
  end
end
