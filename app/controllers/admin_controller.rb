class AdminController < ApplicationController
  def index

  end

  def index_edit

  end

  def index_update

  end

  def about_edit

  end

  def about_update

  end

  def opening_edit
    @opening = Opening.all
  end

  def opening_update
    params.delete('action')
    params.delete('controller')
    params.each do |index, p|
      @opening = Opening.find(index.to_i)
      @opening.opening_from = p['opening_from']
      @opening.opening_to = p['opening_to']
      @opening.save()
    end
    flash[:notice] = 'Opening hours were successfully updated.'
    render json: params
  end
end