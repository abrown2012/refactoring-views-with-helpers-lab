class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(n)
      art = Artist.find_or_create_by(name: n)
      self.artist = art
      art.save
  end
  
end
