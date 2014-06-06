class Plant < ActiveRecord::Base
	belongs_to :garden, :foreign_key => 'garden_id'

end
