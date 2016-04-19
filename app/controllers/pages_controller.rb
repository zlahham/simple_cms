class PagesController < ApplicationController
  def index
    @pages = Pages.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end
end
