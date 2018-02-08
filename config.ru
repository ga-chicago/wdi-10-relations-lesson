require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/WaiterController'

require './models/WaiterModel'

map ('/') {
	run ApplicationController
}
map ('/waiters') {
	run WaiterController
}