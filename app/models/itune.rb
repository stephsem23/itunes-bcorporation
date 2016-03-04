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

  def self.lookup(isbn)
  url = URI("https://itunes.apple.com/lookup?isbn=#{URI.encode(isbn)}")
    response = JSON.parse(Net::HTTP.get(url))
    response["results"].map do |track|
      { artworkUrl100: track["artworkUrl100"],
        trackName: track["trackName"],
        trackViewUrl: track["trackViewUrl"]}
    end
  end

  def self.find(actor)
  url = URI("https://itunes.apple.com/search?term=#{URI.encode(actor)}&entity=movie&limit=5&sort=recent")
    response = JSON.parse(Net::HTTP.get(url))
    response["results"].map do |track|
      { artworkUrl100: track["artworkUrl100"],
        trackName: track["trackName"],
        trackViewUrl: track["trackViewUrl"]}
    end
  end
  
end
