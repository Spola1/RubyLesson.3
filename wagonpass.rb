class WagonPass < Wagon
  attr_reader :free_seats
  def initialize(id, number_of_places = 28)
    @type = 'Пассажирский'
    super
  end

  def take_seat
    raise "Нет свободных мест!" if @occuped == @capacity
  end

  def occupied_seats
    raise "Все места свободны!" if @occuped.zero?
    @occuped -= 1
  end
end
