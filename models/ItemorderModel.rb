class Itemorder < ActiveRecord::Base

	belongs_to :waiter
	belongs_to :menuitem

end