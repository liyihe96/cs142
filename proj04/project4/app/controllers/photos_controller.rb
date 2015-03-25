class PhotosController < ApplicationController
  def index 
    if params[:id] != nil
      @user = User.find(params[:id])
      @photos = @user.photos
    end
  end
end
