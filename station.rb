class Station
  attr_reader :name, :trains

  def initialize (name)
    @name = name
    @trains = []
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
end
