class PagesController < ApplicationController
	
	def index
		@pages = Page.order(:id)

		respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @pages }
  		end
	end

	def show
		@page = Page.find_by_url(params[:url])

		respond_to do |format|
	      format.html # show.html.erb
	      format.json { render json: @page }
  		end
	end

end