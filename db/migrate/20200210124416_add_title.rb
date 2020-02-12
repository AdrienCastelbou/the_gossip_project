class AddTitle < ActiveRecord::Migration[5.2]
  def change
     add_column :gossips, :title, :string
  end
end
