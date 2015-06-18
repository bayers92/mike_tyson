class HomepageInfosController < ApplicationController
  before_action :set_homepage_info, only: [:show, :edit, :update, :destroy]

  # GET /homepage_infos
  # GET /homepage_infos.json
  def index
    @homepage_infos = HomepageInfo.all
  end

  # GET /homepage_infos/1
  # GET /homepage_infos/1.json
  def show
  end

  # GET /homepage_infos/new
  def new
    @homepage_info = HomepageInfo.new
  end

  # GET /homepage_infos/1/edit
  def edit
  end

  # POST /homepage_infos
  # POST /homepage_infos.json
  def create
    @homepage_info = HomepageInfo.new(homepage_info_params)

    respond_to do |format|
      if @homepage_info.save
        format.html { redirect_to @homepage_info, notice: 'Homepage info was successfully created.' }
        format.json { render :show, status: :created, location: @homepage_info }
      else
        format.html { render :new }
        format.json { render json: @homepage_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homepage_infos/1
  # PATCH/PUT /homepage_infos/1.json
  def update
    respond_to do |format|
      if @homepage_info.update(homepage_info_params)
        format.html { redirect_to @homepage_info, notice: 'Homepage info was successfully updated.' }
        format.json { render :show, status: :ok, location: @homepage_info }
      else
        format.html { render :edit }
        format.json { render json: @homepage_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homepage_infos/1
  # DELETE /homepage_infos/1.json
  def destroy
    @homepage_info.destroy
    respond_to do |format|
      format.html { redirect_to homepage_infos_url, notice: 'Homepage info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homepage_info
      @homepage_info = HomepageInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homepage_info_params
      params[:homepage_info]
    end
end
