class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.string :name
      t.string :start_date
      t.string :location
      t.string :founder

      t.timestamps
    end
  end
end
