class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    
  end

  def artist_name=(name)
    artst = Artist.find_by_or_create(name: name)
    self.artist = artst
  end
end
