class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:domain_name, :name_first, :name_last, :homepage_header, :homepage_pic, 
        :about_pic, :intro_paragraph, :resume, 
        :background_type, 
        :background_img1, :background_img2, :background_img3, :background_img4, 
        :background_link1, :background_link2, :background_link3, :background_link4, 
        :showcase_type, 
        :project1_title, :project1_paragraph, 
        :project1_file1, :project1_file1_title, :project1_file1_type, 
        :project1_file2, :project1_file2_title, :project1_file2_type,
        :project1_file3, :project1_file3_title, :project1_file3_type,
        :project2_title, :project2_paragraph, 
        :project2_file1, :project2_file1_title, :project2_file1_type,
        :project2_file2, :project2_file2_title, :project2_file2_type,
        :project2_file3, :project2_file3_title, :project2_file3_type,
        :project3_title, :project3_paragraph, 
        :project3_file1, :project3_file1_title, :project3_file1_type,
        :project3_file2, :project3_file2_title, :project3_file2_type,
        :project3_file3, :project3_file3_title, :project3_file3_type,
        :project4_title, :project4_paragraph, 
        :project4_file1, :project4_file1_title, :project4_file1_type,
        :project4_file2, :project4_file2_title, :project4_file2_type,
        :project4_file3, :project4_file3_title, :project4_file3_type,
        :tumblr_url
        )
    end
end
