class AddLike < ActiveRecord::Migration[5.2]
  def change
    add_column :gossips, :like, :integer
  end
end
