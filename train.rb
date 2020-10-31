class Train

  attr_reader :number, :type, :route
  attr_accessor :station, :speed, :count

  def initialize(number, type, count)
    @number = number
    @type = type
    @count = count
    @speed = 0
  end

  def raise_speed(speed)
    @speed += speed
  end

  def stop
    @speed = 0
  end

  def add_carriage
    if @speed == 0
      @count += 1
    else
      puts 'Остановите поезд.'
    end
  end

  def delete_carriage
    if @speed == 0 && @count.positive?
      @count -= 1
    else
      puts "Убедитесь, что поезд остановлен и прицеплен хотя бы один вагон."
    end
  end

  def route(route)
    @route = route
    @station = @route.stations.first
    station.take_train(self)
  end

  def next_station
    @route.stations[@route.stations.index(@station) + 1]
  end

  def previous_station
    @route.stations[@route.stations.index(@station) - 1] unless @station == @route.stations.first
  end

  def move_next_station
    return unless next_station
    station.send_train(self)
    next_station.take_train(self)
    @station += 1
  end

  def move_previous_station
    return unless previous_station
    station.send_train(self)
    previous_station.take_train(self)
    @station -= 1
  end
end
