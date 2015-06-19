class WebsiteSettingsController < ApplicationController
  before_action :set_website_setting, only: [:show, :edit, :update, :destroy]

  # GET /website_settings
  # GET /website_settings.json
  def index
    @website_settings = WebsiteSetting.all
  end

  # GET /website_settings/1
  # GET /website_settings/1.json
  def show
  end

  # GET /website_settings/new
  def new
    @website_setting = WebsiteSetting.new
  end

  # GET /website_settings/1/edit
  def edit
  end

  # POST /website_settings
  # POST /website_settings.json
  def create
    @website_setting = current_user.create_website_setting(website_setting_params)

    respond_to do |format|
      if @website_setting.save
        format.html { redirect_to edit_user_path(current_user), notice: 'Website setting was successfully created.' }
        format.json { render :show, status: :created, location: @website_setting }
      else
        format.html { render :new }
        format.json { render json: @website_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /website_settings/1
  # PATCH/PUT /website_settings/1.json
  def update
    respond_to do |format|
      if @website_setting.update(website_setting_params)
        format.html { redirect_to edit_user_path(current_user), notice: 'Website setting was successfully updated.' }
        format.json { render :show, status: :ok, location: @website_setting }
      else
        format.html { render :edit }
        format.json { render json: @website_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /website_settings/1
  # DELETE /website_settings/1.json
  def destroy
    @website_setting.destroy
    respond_to do |format|
      format.html { redirect_to website_settings_url, notice: 'Website setting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_website_setting
      @website_setting = WebsiteSetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def website_setting_params
      params.require(:website_setting).permit(:domain_name, :color)
    end
end
