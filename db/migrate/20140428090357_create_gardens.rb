class CreateGardens < ActiveRecord::Migration
  def change
    create_table :gardens do |t|
      t.string :season
      t.integer :year
      t.string :area

      t.timestamps
    end
  end
end
