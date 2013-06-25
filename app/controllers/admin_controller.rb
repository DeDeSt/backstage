class AdminController < ApplicationController
  def index

  end

  def opening_edit
    @opening = Opening.all
  end

  def opening_update
    @opening = Course.find(params[:id])

    respond_to do |format|
      if @opening.update_attributes(params[:opening])
        format.html { redirect_to opening_path, notice: 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'opening_edit' }
        format.json { render json: @opening.errors, status: :unprocessable_entity }
      end
    end
  end
end