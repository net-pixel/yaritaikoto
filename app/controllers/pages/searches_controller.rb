class Pages::SearchesController < ApplicationController
  def index
    @pages = Page.search(params[:keyword])
  end
end
