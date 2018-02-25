module InstanceCounter
  
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  
  
  module ClassMethods
       
    @@count = 0

    def add
      @@count += 1
    end

    def instances
      @@count
    end
  end

  module InstanceMethods

    protected

    def register_instance
      self.class.add
    end
  end
end
