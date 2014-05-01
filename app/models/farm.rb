class Farm < ActiveRecord::Base
	has_many :ownerships
	has_many :users, through: :ownerships
end
