class User < ActiveRecord::Base
	has_many :ownerships
	has_many :farms, through: :ownerships

	validates :email, presence: true, uniqueness: true


end
