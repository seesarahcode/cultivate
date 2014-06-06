class CreateSheep < ActiveRecord::Migration
  def change
    create_table :sheep do |t|
      t.string :category
      t.string :name
      t.date :birthdate
      t.string :breed
      t.string :sex
      t.text :description
      t.string :age
      t.date :last_sheer

      t.timestamps
    end
  end
end
