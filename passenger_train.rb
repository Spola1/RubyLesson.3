# frozen_string_literal: true

class PassengerTrain < Train
  def initialize(number)
    super number, 'Пассажирский'
  end
end
