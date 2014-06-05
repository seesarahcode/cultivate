class Tree < ActiveRecord::Base
	belongs_to :orchard, :foreign_key => 'orchard_id'
end
