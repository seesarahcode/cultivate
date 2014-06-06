class CreateGoats < ActiveRecord::Migration
  def change
    create_table :goats do |t|
      t.string :category
      t.string :name
      t.date :birthdate
      t.string :breed
      t.string :sex
      t.text :description
      t.string :age

      t.timestamps
    end
  end
end
