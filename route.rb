class Route

  attr_reader :stations, :name
  include InstanceCounter

  def initialize(start_station, finish_station)
    @stations = [start_station, finish_station]
    check!(start_station, finish_station)
    register_instance
  end

  def stations_match?
    stations.first == stations.last || stations.first.name == stations.last.name
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

  private

 def check!(start_station, end_station)
   raise 'Для маршрута невозможно назначение пустой станции' if start_station.nil? || finish_station.nil?
 end
end
