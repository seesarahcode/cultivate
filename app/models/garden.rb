class Garden < ActiveRecord::Base
	has_many :plants, -> { order("plant_date DESC, family ASC") }, 
					 :dependent => :nullify

	has_attached_file :default_img, 
										:styles => { 
												:medium => "300x300>", 
												:thumb => "150x150>"
											}, 
										:default_url => "/images/:style/missing.png"
  validates_attachment_content_type :default_img, :content_type => /^image\/(jpeg|png|gif|tiff)$/
end
