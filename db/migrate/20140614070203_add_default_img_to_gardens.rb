class AddDefaultImgToGardens < ActiveRecord::Migration
  def self.up
    add_attachment :gardens, :default_img
  end

  def self.down
    remove_attachment :gardens, :default_img
  end
end
