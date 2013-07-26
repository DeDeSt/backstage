class PricelistController < ApplicationController
  def courses
    #@courses = Course.order(:id)
  end

  def men
    @services = Service.where(hairstyle_id: 1).order(:id).load
  end

  def women
    @services = Service.where(hairstyle_id: 2).order(:id).load
  end

  def children
    @services = Service.where(hairstyle_id: 3).order(:id).load
  end
end