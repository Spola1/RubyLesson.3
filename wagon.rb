class Wagon

  attr_reader :id, :type
  attr_accessor :train
  include Company

  def initialize(id)
    @id = id
  end
end
