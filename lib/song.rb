class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create
    song = new
    Song.all << song
    song
  end
  
  def self.new_by_name(title)
    song = new 
    song.name = title
    song
  end
  
  def self.create_by_name(title)
    song = new 
    song.name = title
    Song.all << song
    song
  end
  
  def self.find_by_name(title)
    Song.all.each do |song|
      return song if song.name == title
    end
    false
  end
  
  def self.find_or_create_by_name(title)
    Song.all.each do |song|
      return song if song.name == title
    end
    song = new
    song.name = title
    song
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
