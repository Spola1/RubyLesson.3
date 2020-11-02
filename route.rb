class Route

  attr_reader :stations

  def initialize(start_station, finish_station)
    @stations = [start_station, finish_station]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def delete_station(station)
    return unless (@stations.first|| @stations.last) != station
    @stations.delete(station)
  end
end
#нашел только как запретить удалять первую и последнюю станции
