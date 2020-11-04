class Train

  attr_reader :number, :type, :route, :wagons
  attr_accessor :station, :speed, :count

  def initialize(number, type)
    @number = number
    @type = type
    @wagons = []
    @speed = 0
    end

  def raise_speed(speed)
    @speed += speed
  end

  def stop
    @speed = 0
  end

  def add_carriage(wagon)
    if @speed == 0 && self.type == wagon.type
      @wagons << wagon
      wagon.train = self
    else
      raise 'Поезд находится в движении или не совпадают типы поезд/вагон.'
    end
  end

  def delete_carriage(wagon)
    if @speed == 0
      @wagons.delete(wagon)
        wagon.train = nil
      else
        raise 'Невозможно отцепить вагон, когда поезд движется'
      end
    end

  def route(route)
    @route = route
    @station = @route.stations.first
    station.get_train(self)
  end

  def next_station
    @route.stations[@route.stations.index(@station) + 1]
  end

  def previous_station
    @route.stations[@route.stations.index(@station) - 1] unless @station == @route.stations.first
  end

  def move_next_station
    return unless next_station
    station.delete_train(self)
    next_station.get_train(self)
    end

  def move_previous_station
    return unless previous_station
    station.delete_train(self)
    previous_station.get_train(self)
    end
end
