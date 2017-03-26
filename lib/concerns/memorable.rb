module Memorable

  module ClassMethods
    # methods that are called on a class

    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end

  end

  module InstanceMethods
    # methods that are called on an instance of a class

    def initialize
      self.class.all << self
      # add new class instance to it's own @@all array
    end
  end

end
