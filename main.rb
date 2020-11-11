require_relative 'menu'
require_relative 'varification'
require_relative 'company'
require_relative 'Instanse'
require_relative 'station'
require_relative 'route'
require_relative 'wagon'
require_relative 'train'
require_relative 'CargoTrain'
require_relative 'PassengerTrain'
require_relative 'wagoncargo'
require_relative 'wagonpass'


controller = Menu.new
controller.start
