class Menuitem < ActiveRecord::Base

	has_many :itemorders
	has_many :waiters, :through => :itemorders

end