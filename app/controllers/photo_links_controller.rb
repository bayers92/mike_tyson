class PhotoLinksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_photo_link, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource :except => [:create, :new]

  respond_to :html

  def index
    @photo_links = PhotoLink.all
    respond_with(@photo_links)
  end

  def show
    respond_with(@photo_link)
  end

  def new
    @photo_link = PhotoLink.new
    respond_with(@photo_link)
  end

  def edit
  end

  def create
    @photo_link = current_user.create_photo_link(photo_link_params)
    respond_to do |format|
      if @photo_link.save
          format.html { redirect_to edit_user_path(current_user), notice: 'Photo Link was successfully created.' }
          format.json { render :show, status: :created, location: @photo_link }
      else
        format.html { render :new }
        format.json { render json: @photo_link.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @photo_link.update(photo_link_params)
        respond_to do |format|
      if @photo_link.save
          format.html { redirect_to edit_user_path(current_user), notice: 'Photo Link was successfully Updated.' }
          format.json { render :show, status: :created, location: @photo_link }
      else
        format.html { render :new }
        format.json { render json: @photo_link.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @photo_link.destroy
    respond_with(@photo_link)
  end

  private
    def set_photo_link
      @photo_link = PhotoLink.find(params[:id])
    end

    def photo_link_params
      params.require(:photo_link).permit(:tumblr_url)
    end
end
