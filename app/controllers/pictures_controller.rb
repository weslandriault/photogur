class PicturesController < ApplicationController

	def index
		@pictures = Picture.all
	end

	def show
		@picture = Picture.find(params[:id])
	end

	def new
		@picture = Picture.new
	end

	def create
		# render :text => "Posting a new picture: Title: #{params[:title]}, Artist: #{params[:artist]}, URL: #{params[:url]}, Description: #{params[:description]}."
		@picture = Picture.new(picture_params)

		if @picture.save
			redirect_to pictures_url
		else
			render :new
		end
	end

	private
	def picture_params
		params.require(:picture).permit(:title, :artist, :url, :description)
	end
end
