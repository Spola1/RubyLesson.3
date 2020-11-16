class WagonPass < Wagon
  attr_reader :free_seats
  def initialize(id, number_of_places)
    super(id)
    @type = 'Пассажирский'
    @number_of_places = number_of_places
    @free_seats = number_of_places
  end

  def take_seat
    @free_seats -= 1
  end

  def occupied_seats_quantity
    @number_of_places - @free_seats
  end
end
