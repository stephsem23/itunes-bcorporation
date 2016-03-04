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
    response["results"].map do |book|
      { artworkUrl100: book["artworkUrl100"],
        trackName: book["trackName"],
        trackViewUrl: book["trackViewUrl"]}
    end
  end

  def self.find(actor)
  url = URI("https://itunes.apple.com/search?term=#{URI.encode(actor)}&media=movie&limit=5&sort=recent")
    response = JSON.parse(Net::HTTP.get(url))
    response["results"].map do |movie|
      { artworkUrl100: movie["artworkUrl100"],
        trackName: movie["trackName"],
        trackViewUrl: movie["trackViewUrl"]}
    end
  end

end
