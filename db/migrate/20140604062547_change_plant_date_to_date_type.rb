class ChangePlantDateToDateType < ActiveRecord::Migration
  def change
  	change_table(:plants) do |t|
      t.change :plant_date, :date
    end
  end
end
