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
end
