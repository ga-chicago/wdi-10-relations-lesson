require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/WaiterController'
require './controllers/MenuitemController'

require './models/WaiterModel'
require './models/MenuitemModel'
require './models/ItemorderModel'


map ('/') {
	run ApplicationController
}
map ('/waiters') {
	run WaiterController
}
map ('/menuitems') {
	run MenuitemController
}