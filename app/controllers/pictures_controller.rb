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
    if @picture.save
      redirect_to '/pictures' #pictures_path
    end
    #render :text => "Saving a picture. Url: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
  end

  def edit
    @picture = Picture.find(params[:id])
  end


  def update
    # get the picture I want to update
    @picture = Picture.find(params[:id])

    # to get the new data for this picture use the params Hash
    # params looks like this
    # {:id => 1, :title => "My new title", :artist => "Zoe", :url => "http://theurl.com"}
    # Solution 1
    success = @picture.update_attributes(
      :title  => params[:title], 
      :artist => params[:artist], 
      :url    => params[:url]
    )

    # # Solution 2

    # @picture.update_attribute(:url, params[:url])
    # @picture.update_attribute(:title, params[:title])
    # @picture.update_attribute(:artist, params[:artist])

    # # Solution 3
    # @picture.url    = params[:url]
    # @picture.title  = params[:title]
    # @picture.artist = params[:artist]
    # success = @picture.save


    if success
      # TODO: redirect to the picture, so I can see my changes
      redirect_to "/pictures/#{@picture.id}"
    else
      redirect_to '/pictures'
    end
  end













end