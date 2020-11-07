class Route

  attr_reader :stations, :name
  include InstanceCounter

  def initialize(start_station, finish_station)
    @stations = [start_station, finish_station]
    register_instance
  end

  def name
    stations.first.name + '-' + stations.last.name
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def stations_list
   stations.each.with_index(1) do |station, index|
     puts "#{index}.#{station.name}"
   end
 end

  def delete_station(station)
    return unless (@stations.first|| @stations.last) != station
    @stations.delete(station)
  end
end
