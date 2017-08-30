class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
    @user = current_user
  end

  def create
    @picture = Picture.new(params.require(:picture).permit(:url, :caption, :tag))
    @picture.user = current_user #current_user is the one who's posting the pic. have to have this orelse Picture.new's user_id will be nil
    if @picture.save
      redirect_to user_path(current_user)
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
        redirect_to user_path(current_user)
      else
        redirect_to edit_user_path
      end
  end

  def destroy
    @user= current_user
    @picture = Picture.find(params[:id])
      if @picture.destroy
        redirect_to user_path(params[:user_id])
      else
        redirect_to edit_user_path(params[:user_id])
      end
  end


  def picture_params
    params.require(:picture).permit(:url, :caption, :tag)
  end
end
