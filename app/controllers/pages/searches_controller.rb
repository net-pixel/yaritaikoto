class Pages::SearchesController < ApplicationController
  def index
    @pages = Page.search(params[:keyword])
    respond_to do |format|
      format.html
      format.json
    end
  end
end
