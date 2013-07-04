class HomeController < ApplicationController
  def index
  end

  def about
  end

  def opening
    @opening = Opening.all
  end

  def prices
    @courses = Course.all
  end

  def portfolio
    @page = Page.find_by_page 'portfolio_page'
  end

  def contacts
    @page = Page.find_by_page 'contacts_page'
  end
end
