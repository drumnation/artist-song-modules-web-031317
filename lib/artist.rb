class Artist

  attr_accessor :name
  attr_reader :songs

  extend Findable::ClassMethods, Memorable::ClassMethods
  include Memorable::InstanceMethods, Paramable::InstanceMethods
  # extend is for class methods
  # include is for instance methods
  # parent::child is called namespacing

  @@artists = []
  # bucket of all artist objects

  def initialize
    super
    @songs = []
    # A method that includes the super keyword will execute
    # any code placed inside the super class' method of the
    # same name, and then execute any code inside the child class' method
  end

  def self.all
    @@artists
    # returns all the artist objects
  end

  # class methods for adding a new song object to an artist's array of songs.

  def add_song(song)
    @songs << song
    song.artist = self
    # adds a song to the artist object's @song's array
    # adds the artist name to the song object
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
    # iterate through array of songs adding each song to
      # the artist object's @songs array
    # adds each song's artist name to the song object
  end

end

# REFACTORED TO MODULES

# concerns/memorable.rb

# class methods for returning, counting, and clearing
  # all artist objects from @@artists array

# def self.reset_all
#   self.all.clear
#   # clears all artist objects from @@artists array
# end

# def self.count
#   @@artists.count
#   # returns the number of artist objects in the @@artists array
# end

# concerns/findable.rb

# def self.find_by_name(name)
#   @@artists.detect { |a| a.name == name }
# end

# concerns/paramble.rb

# def to_param
#   name.downcase.gsub(' ', '-')
# end
