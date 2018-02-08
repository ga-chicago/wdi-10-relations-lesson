class WaiterController < ApplicationController

	get '/' do
		@waiters = Waiter.all
		@waiters.to_json
	end

	get '/:id/orders' do
		@waiter = Waiter.find params[:id]
		# stuff = @waiter.itemorders
		stuff = @waiter.menuitems
		stuff.to_json
	end 

	post '/' do
		@waiter = Waiter.new
		@waiter.name = params[:name]
		@waiter.save
		@waiter.to_json
	end

	put '/:id' do
		@waiter = Waiter.find params[:id]
		@waiter.name = params[:name]
		@waiter.save
		@waiter.to_json
	end

	delete '/:id' do
		@waiter = Waiter.find params[:id]
		wname = @waiter.name
		@waiter.delete
		{
			message: "Waiter #{wname} deleted"
		}.to_json
	end

end