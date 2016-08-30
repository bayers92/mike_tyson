class PersonalInfosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_personal_info, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource :except => [:create, :new]

  respond_to :html
  
  # GET /personal_infos
  # GET /personal_infos.json
  def index
    @personal_infos = PersonalInfo.all
  end

  # GET /personal_infos/1
  # GET /personal_infos/1.json
  def show
  end

  # GET /personal_infos/new
  def new
    @personal_info = PersonalInfo.new
  end

  # GET /personal_infos/1/edit
  def edit
  end

  # POST /personal_infos
  # POST /personal_infos.json
  def create
    @user = current_user
    @personal_info = @user.create_personal_info(personal_info_params)
    respond_to do |format|
      if @personal_info.save
          format.html { redirect_to edit_personal_info_path(current_user.personal_info), notice: 'Personal Info was successfully created.' }
          format.json { render :show, status: :created, location: @personal_info }
      else
        format.html { render :new }
        format.json { render json: @personal_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_infos/1
  # PATCH/PUT /personal_infos/1.json
  def update
    @user = current_user
    respond_to do |format|
      if @personal_info.update(personal_info_params)
        if @personal_info.remove_exp1 == true
            @personal_info.exp1 = nil
            @personal_info.remove_exp1 = false
        end
        if @personal_info.remove_exp2 == true
            @personal_info.exp2 = nil
            @personal_info.remove_exp2 = false
        end
        if @personal_info.remove_exp3 == true
            @personal_info.exp3 = nil
            @personal_info.remove_exp3 = false
        end
        if @personal_info.remove_exp4 == true
            @personal_info.exp4 = nil
            @personal_info.remove_exp4 = false
        end
        @personal_info.save
        format.html { redirect_to :back, notice: 'Personal info was successfully updated.' }
        format.json { render :show, status: :ok, location: @personal_info }
      else
        format.html { render :edit }
        format.json { render json: @personal_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_infos/1
  # DELETE /personal_infos/1.json
  def destroy
    @personal_info.destroy
    respond_to do |format|
      format.html { redirect_to edit_user_path(@user), notice: 'Personal info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def delete_exp
   @user = current_user
   @user.exp1 = nil
   @user.save
   respond_to do |format|
     format.html { redirect_to edit_personal_info_path(current_user.personal_info), notice: 'Info was successfully updated.' }
     format.json { render :show, status: :ok, location: @user }
   end
  end

  def crop
    @user = current_user
    @personal_info = @user.create_personal_info(personal_info_params)
    # @user = current_user
    # @personal_info = @user.create_personal_info(personal_info_params)
    # @asset = @personal_info.about_pic
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_info
      @personal_info = PersonalInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_info_params
       params.require(:personal_info).permit(:name_first, :name_last, :intro_paragraph, :about_pic, :resume, :vertical, :exp1, :exp2, :exp3, :exp4, :remove_exp1, :remove_exp2, :remove_exp3, :remove_exp4, 
        :about_pic_original_w, :about_pic_original_h, :about_pic_box_w, :about_pic_aspect, :about_pic_crop_x, :about_pic_crop_y, :about_pic_crop_w, :about_pic_crop_h)
    end
end
