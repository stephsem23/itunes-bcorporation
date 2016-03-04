class MoviesController < ApplicationController
  def index
    @movies = Itune.find(params[:q] || "leonardo di caprio")
  end
end
