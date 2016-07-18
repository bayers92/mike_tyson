class UsersController < ApplicationController
  before_action :authenticate_person!, :except => [:show]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_action :require_login, only: [:new, :create, :show]
  load_and_authorize_resource :except => [:create, :new, :show]
  # before_filter :verify_email, :except => [:show]

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

  def feed
    @user = User.find params[:user_id]
  end

  def dashboard
    @user = User.find params[:user_id]
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to edit_homepage_info_path(current_user.homepage_info), notice: 'User was successfully created.' }
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
    @user = User.find params[:id]
    @school = @user.school


    respond_to do |format|

      if params[:approval_process]
        # Clerk signed in
        if clerk_signed_in?
          if @user.update(user_params)
            if params[:commit] == 'Deny'
              format.html { redirect_to user_path(@user), notice: 'User was successfully updated.' }
              format.json { head :no_content }
            else
              format.html { redirect_to clerk_path(current_clerk), notice: 'User was successfully updated.' }
              format.json { head :no_content }
            end
          else
            format.html { redirect_to clerk_path(current_clerk), notice: @user.errors }
            format.json { render json: @user.errors, status: :unprocessable_entity }
          end
        # Reviewer signed in
        elsif reviewer_signed_in?
          if @user.update(user_params)
            if params[:commit] == 'Deny'
              format.html { redirect_to reviewer_path(current_reviewer), notice: 'User was successfully updated.' }
              format.json { head :no_content }
            else
              format.html { redirect_to reviewer_path(current_reviewer), notice: 'User was successfully updated.' }
              format.json { head :no_content }
            end
          else
            format.html { redirect_to reviewer_path(current_reviewer), notice: @user.errors }
            format.json { render json: @user.errors, status: :unprocessable_entity }
          end
        # Student signed in
        else
          if @user.update(user_params)
            if params[:commit] == 'Deny'
              format.html { redirect_to user_dashboard_path(current_user), notice: 'User was successfully updated.' }
              format.json { head :no_content }
            else
              format.html { redirect_to user_dashboard_path(current_user), notice: 'User was successfully updated.' }
              format.json { head :no_content }
            end
          else
            format.html { redirect_to user_dashboard_path(current_user), notice: @user.errors }
            format.json { render json: @user.errors, status: :unprocessable_entity }
          end
        end

        # admin changing stauts of domain name
      elsif params[:dstatus_process]
        if @user.update(user_params)
          format.html { redirect_to school_roster_path(@school), notice: 'User domain was successfully updated.' }
          format.json { head :no_content }
        end

        # User themself
      else
        if @user.update(user_params)
          format.html { redirect_to edit_user_path(@user), notice: 'User was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
       else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
       end
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
      params.require(:user).permit(:school_id, :gradyear, :approval, :approval_process, :dstatus, :dstatus_process, industry_list: [], career_list: [], language_list: [], wexperience_list: [], undergrad_list: [], uconcentration_list: [], travel_list: [], state_list: [], skill_list: [], size_list: [], sex_list: [], region_list: [], mconcentration_list: [], demographic_list: [], balance_list: [], visa_list: [], city_list: [])
    end

    def verify_email
      redirect_to(root_path) unless current_user.email.include?(current_user.school.domain)
    end
end


