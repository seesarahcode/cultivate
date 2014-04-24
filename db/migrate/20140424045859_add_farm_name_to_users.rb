class AddFarmNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :farm_name, :string
  end
end
