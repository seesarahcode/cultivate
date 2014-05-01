class User < ActiveRecord::Base
	has_many :ownerships
	has_many :farms, through: :ownerships
end
