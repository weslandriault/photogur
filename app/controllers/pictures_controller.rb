class PicturesController < ApplicationController

	def index
		@pictures = Picture.all
	end

	def show
		@picture = Picture.find(params[:id])
	end

	def new
	end

	def create
		render :text => "Posting a new picture: Title: #{params[:title]}, Artist: #{params[:artist]}, URL: #{params[:url]}, Description: #{params[:description]}."
	end

end
