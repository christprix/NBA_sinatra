require_relative 'config/environment.rb'
use Rack::MethodOverride
use UsersController
# use ControllerOfUrApp
# use OtherController
run ApplicationController
