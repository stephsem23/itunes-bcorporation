class Itune < ActiveRecord::Base
  def self.search(term)
  url = URI("https://itunes.apple.com/search?term=#{URI.encode(term)}&entity=song&limit=10&sort=recent")
    response = JSON.parse(Net::HTTP.get(url))
    response["results"].map do |track|
      { trackName: track["trackName"], 
        trackId: track["trackId"], 
        artworkUrl60: track["artworkUrl60"],
        previewUrl: track["previewUrl"] }
    end
  end
end
