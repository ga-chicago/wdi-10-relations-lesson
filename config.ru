require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/WaiterController'
require './controllers/MenuitemController'

require './models/WaiterModel'
require './models/MenuitemModel'

map ('/') {
	run ApplicationController
}
map ('/waiters') {
	run WaiterController
}
map ('/menuitems') {
	run MenuitemController
}