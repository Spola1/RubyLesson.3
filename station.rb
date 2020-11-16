class Station
  attr_reader :name, :trains
  include InstanceCounter
  include Verification

  @@stations = []

  def initialize (name)
    @name = name
    @@stations << name
    check!
    @trains = []
    register_instance
  end

  def all
    @@stations
  end

  def map_trains
    @trains.each do |train|
      yield(train)
    end
  end

  def get_train(train)
    @trains << train
  end

  def delete_train(train)
    @trains.delete(train)
  end

  def trains_type(type)
    @trains.each do |train|
      if train.type == type
        puts train
      end
    end
  end

  private

  def check!
    raise 'Название станции должно быть больше 2 символов' if @name.length < 3
  end

end
