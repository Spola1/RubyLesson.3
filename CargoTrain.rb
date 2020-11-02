class CargoTrain < Train
  def initialize(number, type)
    super
    @type = 'Грузовой'
  end
end
