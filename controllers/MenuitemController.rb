class MenuitemController < ApplicationController

	get '/' do
		@menuitems = Menuitem.all
		@menuitems.to_json
	end

	post '/' do
		@menuitem = Menuitem.new
		@menuitem.name = params[:name]
		@menuitem.save
		@menuitem.to_json
	end

	put '/:id' do
		@menuitem = Menuitem.find params[:id]
		@menuitem.name = params[:name]
		@menuitem.save
		@menuitem.to_json
	end

	delete '/:id' do
		@menuitem = Menuitem.find params[:id]
		menu_item_name = @menuitem.name
		@menuitem.delete
		{
			message: "Menuitem #{menu_item_name} deleted"
		}.to_json
	end

end