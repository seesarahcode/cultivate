class ChangeTypeNameInTrees < ActiveRecord::Migration
  def change
  	rename_column :trees, :type, :tree_type
  end
end
