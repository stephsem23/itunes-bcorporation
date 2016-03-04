class BooksController < ApplicationController
  def index
    @books = Itune.lookup(params[:q] || "9780316069359")
  end
end
