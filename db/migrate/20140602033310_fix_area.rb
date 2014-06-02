class FixArea < ActiveRecord::Migration
  def change
  	rename_column :gardens, :area, :description
  end
end
