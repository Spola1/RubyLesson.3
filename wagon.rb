class Wagon

  attr_reader :id, :type
  attr_accessor :train
  include Company
  include Verification

  ID_CARRIAGE = /^\d+$/

  def initialize(id)
    @id = id
    check!
  end

  private

 def check!
   raise 'Неверный формат номера' if @id.to_s
 end

end
