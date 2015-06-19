class BackgroundInfosController < ApplicationController
  before_action :set_background_info, only: [:show, :edit, :update, :destroy]

  # GET /background_infos
  # GET /background_infos.json
  def index
    @background_infos = BackgroundInfo.all
  end

  # GET /background_infos/1
  # GET /background_infos/1.json
  def show
  end

  # GET /background_infos/new
  def new
    @background_info = BackgroundInfo.new
  end

  # GET /background_infos/1/edit
  def edit
  end

  # POST /background_infos
  # POST /background_infos.json
  def create
    @user = current_user
    @background_info = @user.create_background_info(background_info_params)

    respond_to do |format|
      if @background_info.save
        format.html { redirect_to edit_user_path(@user), notice: 'Background info was successfully created.' }
        format.json { render :show, status: :created, location: @background_info }
      else
        format.html { render :new }
        format.json { render json: @background_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /background_infos/1
  # PATCH/PUT /background_infos/1.json
  def update
    @user = current_user
    respond_to do |format|
      if @background_info.update(background_info_params)
        format.html { redirect_to edit_user_path(@user), notice: 'Background info was successfully updated.' }
        format.json { render :show, status: :ok, location: @background_info }
      else
        format.html { render :edit }
        format.json { render json: @background_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /background_infos/1
  # DELETE /background_infos/1.json
  def destroy
    @background_info.destroy
    respond_to do |format|
      format.html { redirect_to background_infos_url, notice: 'Background info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_background_info
      @background_info = BackgroundInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def background_info_params
      params.require(:background_info).permit(:background_type)
    end
end
