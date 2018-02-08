class Waiter < ActiveRecord::Base

	has_many :itemorders
	has_many :menuitems, :through => :itemorders
	
end