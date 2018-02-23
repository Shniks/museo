class Curator

  attr_reader :artists,
              :museums,
              :photographs

  def initialize
    @artists     = []
    @museums     = []
    @photographs = []
  end

  def add_museum(data)
    museums << Museum.new({id: (museums.length + 1), name: data[:name]})
  end

  def add_artist(data)
    artists << Artist.new({born: data[:born], country: data[:country], died: data[:died], id: (artists.length + 1), name: data[:name]})
  end

  def add_photograph(data)
    photographs << Photograph.new({artist_id: data[:artist_id], id: (photographs.length + 1), museum_id: data[:museum_id], name: data[:name], year: data[:year]})
  end

  def find_museum(id)
    museums.find { |museum| id == museum.id }
  end

  def find_artist(id)
    artists.find { |artist| id == artist.id }
  end

  def find_museum_by_photograph(photograph)
    museums.find { |museum| photograph.id == museum.id }
  end

  def find_artist_by_photograph(photograph)
    artists.find { |artist| photograph.id == artist.id }
  end

end
