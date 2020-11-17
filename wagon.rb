class Wagon

  attr_reader :id, :type
  attr_accessor :train_number, :capacity, :occuped
  include Company
  include Verification

  ID_CARRIAGE = /^\d+$/

  def initialize(id, capacity)
    @id = id
    @capacity = capacity
    @occuped = 0
    @train_number = nil
    check!
  end

  def attached?
    @train_number != nil
  end

  def avaliable
    @capacity - @occupied
  end

  private

 def check!
   raise 'Неверный формат номера' if @id.to_s
 end

end
