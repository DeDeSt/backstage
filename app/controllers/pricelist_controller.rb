class PricelistController < ApplicationController
  def courses
    #@courses = Course.order(:id)
  end

  def men
    @services = Service.all(conditions: { hairstyle_id: 1 }, order: :id)
  end

  def women
    @services = Service.all(conditions: { hairstyle_id: 2 }, order: :id)
  end

  def children
    @services = Service.all(conditions: { hairstyle_id: 3 }, order: :id)
  end
end