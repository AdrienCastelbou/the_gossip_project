class ChangeUserNameByUserId < ActiveRecord::Migration[5.2]
  def change
    remove_column :gossips, :author
    add_reference :gossips, :user, foreign_key: true
  end
end
