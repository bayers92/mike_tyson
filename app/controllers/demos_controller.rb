class DemosController < ApplicationController
  before_action :set_demo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:new, :create]

  respond_to :html

  def index
    @demos = Demo.all
    respond_with(@demos)
  end

  def show
    respond_with(@demo)
  end

  def new
    @demo = Demo.new
    respond_with(@demo)
  end

  def edit
  end

  def create
    @demo = Demo.new(demo_params)
    @demo.save
    respond_to do |format|
      if @demo.save
        format.html { redirect_to root_url, notice: 'Thank you for your interest. We will reach out to you soon.' }
        format.json { render :show, status: :created, location: @demo }
      else
        format.html { render :new }
        format.json { render json: @demo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @demo.update(demo_params)
    respond_with(root_path)
  end

  def destroy
    @demo.destroy
    respond_with(@demo)
  end

  private
    def set_demo
      @demo = Demo.find(params[:id])
    end

    def demo_params
      params[:demo].permit(:email)
    end
end
