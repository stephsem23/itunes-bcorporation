class TracksController < ApplicationController
  def index
    @tracks = Itune.search(params[:q] || "adele")
  end
end
