class SchoolsController < ApplicationController
  before_action :authenticate_admin!, except: [:show]
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @schools = School.all.order('name ASC')
    respond_with(@schools)
  end

  def show
    @school = School.find params[:id]
    @student_tags = @school.users.tag_counts_on(:tags)
    tags = []
    tags << params[:industry] unless params[:industry].blank?
    tags << params[:career] unless params[:career].blank?
    if params[:industry]
      if params[:career]
        @students = @school.users.tagged_with(params[:industry], :on => :industry, :any => true).tagged_with(params[:career], :on => :career, :any => true)
      else
        @students = @school.users.tagged_with(params[:industry], :on => :industry, :any => true)
      end
    elsif params[:career]
      @students = @school.users.tagged_with(params[:career], :on => :career, :any => true)
    else
      @students = @school.users
    end
    respond_with(@school)
  end

  def new
    @school = School.new
    respond_with(@school)
  end

  def edit
  end

  def create
    @school = School.new(school_params)
    @school.save
    respond_with(@school)
  end

  def update
    @school.update(school_params)
    respond_with(@school)
  end

  def destroy
    @school.destroy
    respond_with(@school)
  end

  private
    def set_school
      @school = School.find(params[:id])
    end

    def school_params
      params[:school].permit(:name, :logo, :color1, :color2, :domain)
    end
end
