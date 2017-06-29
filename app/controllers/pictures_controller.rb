class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(params.require(:picture).permit(:url, :caption, :tag))
    @picture.user = current_user #current_user is the one who's posting the pic. have to have this orelse Picture.new's user_id will be nil
    if @picture.save
      redirect_to pictures_path
    else
      render :new #don't refresh the page, stay at the new/form page
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
