class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @photos = Photo.all
    respond_with(@photos)
  end

  def show
    respond_with(@photo)
  end

  def new
    @photo = Photo.new
    respond_with(@photo)
  end

  def edit
  end

  def create
    @user = current_user
    @photo = @user.photos.create(photo_params)
    respond_to do |format|
      if @photo.save
        format.html { redirect_to photos_path, notice: 'Photo was successfully uploaded.' }
        format.json { render :show, status: :created, location: @photo }
      else
        format.html { render :new }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to photos_path, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @photo.destroy
    respond_with(@photo)
  end

  private
    def set_photo
      @photo = Photo.find(params[:id])
    end

    def photo_params
      params[:photo].permit(:image)
    end
end
