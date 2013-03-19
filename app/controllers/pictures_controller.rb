class PicturesController < ApplicationController# NOT: ActionController::Base

  def index
    @greeting = "Hello World"

    @pictures = [
      'http://monicao.s3.amazonaws.com/bitmaker/house.jpg', 
      'http://monicao.s3.amazonaws.com/bitmaker/wave.jpg', 
      'http://monicao.s3.amazonaws.com/bitmaker/girl.jpg',
      'http://lolcat.com/images/lolcats/1338.jpg'
    ]
  end
end