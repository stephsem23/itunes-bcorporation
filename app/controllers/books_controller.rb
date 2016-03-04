class BooksController < ApplicationController
  def index
    @books = Itune.lookup(params[:q] || "9780062073501")
  end
end
