class HomeController < ApplicationController
  def index
  end

  def about
  end

  def opening
    @opening = Opening.order(:id)
  end

  def portfolio
    @portfolio = Portfolio.order(:id)
  end

  def contacts
  end
end
