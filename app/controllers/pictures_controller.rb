class PicturesController < ApplicationController# NOT: ActionController::Base

  def index
    @pictures = Picture.all
  end

  def show
    # params = {
    #   :id => "5"
    # }
    @picture = P.find params[:id]
  end

  def new
  end

  def create
    # params = {
    #   :url => "http://fdasfdsafds",
    #   :title => "some title",
    #   :artist => "some artist"
    # }
    @picture = Picture.new
    @picture.url = params[:url]
    @picture.title = params[:title]
    @picture.artist = params[:artist]
    success = @picture.save
    if success
      redirect_to '/pictures' #pictures_path
    end
    #render :text => "Saving a picture. Url: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
  end

end