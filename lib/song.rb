
class Song

  extend Memorable::ClassMethods, Findable::ClassMethods
  include Memorable::InstanceMethods, Paramable::InstanceMethods
  # initialize link to files containing modules with methods

  attr_accessor :name, :artist

  @@songs = []
  # container of all song objects

  def self.all
    @@songs
    # returns container of all song objects
  end

end

# REFACTORED TO MODULES

# concerns/memorable.rb

# def initialize
#   super
#   @songs = []
# end

# def initialize
#   @@songs << self
# end

# def self.count
#   self.all.count
# end

# def self.reset_all
#   @@songs.clear
# end

# concerns/findable.rb

# def self.find_by_name(name)
#   @@songs.detect{|a| a.name == name}
# end

# concerns/paramble.rb

# def to_param
#   name.downcase.gsub(' ', '-')
# end
