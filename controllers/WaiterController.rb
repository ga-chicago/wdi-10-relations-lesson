class WaiterController < ApplicationController

	get '/' do
		@waiters = Waiter.all
		@waiters.to_json
	end

end