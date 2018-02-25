require_relative 'instance_counter'

class Station

  include InstanceCounter 

  @@stations = []

  def self.all
    @@stations
  end

  attr_reader :name, :trains
  
  def initialize(name)
    @name = name
    @trains = []
    @@stations << self
    register_instance
  end

  def add_train(train)
    @trains << train
  end

  def delete_train(train)
    @trains.delete(train)
  end

  def list_by_type(type)
    self.trains.select { |train| train.type == type }
  end
end