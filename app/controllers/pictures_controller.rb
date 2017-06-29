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
    p params
    @picture = Picture.find(params[:id])
    @user = current_user
  end

  def update
    @picture = Picture.find(params[:id])
      if @picture.update_attributes(picture_params)
        redirect_to user_picture_path
      else
        redirect_to edit_user_path
      end

  end

  def destroy
  end
end
