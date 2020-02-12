class ChangeCityByCityId < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :city
    add_reference :users, :city, foreign_key: true
 
  end
end
