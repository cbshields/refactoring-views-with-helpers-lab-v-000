class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
  end

  def artist_name=(name)
    artist = Artist.find_by_or_create(name: name)
    self.artist.artist
  end
end
