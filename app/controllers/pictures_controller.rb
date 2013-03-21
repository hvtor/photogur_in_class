class PicturesController < ApplicationController# NOT: ActionController::Base

  def index
    @pictures = Picture.all
  end

  def show
    # params = {
    #   :id => "5"
    # }
    @picture = Picture.find params[:id]
  end

  def new
    @picture = Picture.new
  end

  def create
    # params = {
    #   :url => "http://fdasfdsafds",
    #   :title => "some title",
    #   :artist => "some artist"
    # }

    # Solution 1
    # @picture = Picture.new
    # @picture.url = params[:url]
    # @picture.title = params[:title]
    # @picture.artist = params[:artist]

    # Solution2 - needs attr_accessible on the model
    # success = @picture.create(:title => params[:title], :url => params[:url], :artist => params[:artist])

    @picture = Picture.new(params[:picture])
    # Create doesn't return a boolean, always returns an instance of a picture.
    if @picture.save # returns true or false 
      redirect_to '/pictures' #pictures_path
    end
    #render :text => "Saving a picture. Url: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
  end

  def edit
    @picture = Picture.find(params[:id])
  end


  def update
    # Example params looks like this:
    # params = {
    #   :id => "4",
    #   :picture => {
    #     :title => "some title here ",
    #     :url => "http://some-url-here.com/",
    #     :artist => "Artist name"
    #   }
    # }

    # get the picture I want to update
    @picture = Picture.find(params[:id])

    # The update_attributes below is passing in a hash
    # The hash is nicely put together by Rails thanks to form_for
    # This is what is happening on line 70 below.
    # @picture.update_attributes({
    #   :title => "!!! ",
    #   :name => "Khurram",
    #   :url => "...."
    # })

    if @picture.update_attributes(params[:picture]) # Why?
      redirect_to "/pictures/#{@picture.id}"
    else
      # do something else
    end
  end













end