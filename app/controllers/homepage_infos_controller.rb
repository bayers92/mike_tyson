class HomepageInfosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_homepage_info, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource :except => [:create, :new]

  respond_to :html

  def index
    @homepage_infos = HomepageInfo.all
    respond_with(@homepage_infos)
  end

  def show
    respond_with(@homepage_info)
  end

  def new
    @homepage_info = HomepageInfo.new
    respond_with(@homepage_info)
  end

  def edit
  end

  def create
    @homepage_info = current_user.create_homepage_info(homepage_info_params)
    respond_to do |format|
      if @homepage_info.save
          format.html { redirect_to edit_user_path(current_user), notice: 'Homepage Info was successfully created.' }
          format.json { render :show, status: :created, location: @homepage_info }
      else
        format.html { render :new }
        format.json { render json: @homepage_info.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @homepage_info.update(homepage_info_params)
    respond_to do |format|
      if @homepage_info.save
          format.html { redirect_to edit_homepage_info_path(current_user.homepage_info), notice: 'Homepage Info was successfully updated.' }
          format.json { render :show, status: :created, location: @homepage_info }
      else
        format.html { render :new }
        format.json { render json: @homepage_info.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @homepage_info.destroy
    respond_with(@homepage_info)
  end

  private
    def set_homepage_info
      @homepage_info = HomepageInfo.find(params[:id])
    end

    def homepage_info_params
      params.require(:homepage_info).permit(:homepage_header, :homepage_display_name, :homepage_pic)
    end
end
