class PagesController < ApplicationController
  def index
    @pages = Page.all.order("created_at DESC").page(params[:page]).per(30)
  end

  def new
    @page = Page.new
  end

  def create
    Page.create(page_params)
  end
  
  def destroy
    page = Page.find(params[:id])
    page.destroy
  end

  def edit
    @page = Page.find(params[:id])
  end
  
  def update
    page = Page.find(params[:id])
    page.update(page_params)
  end
  
  private
  def page_params
    params.require(:page).permit(:content)
  end
  
end