class AnalyticsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource :except => [:create, :new]
  before_action :set_analytic, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @analytics = Analytic.all
    respond_with(@analytics)
  end

  def show
    respond_with(@analytic)
  end

  def new
    @analytic = Analytic.new
    respond_with(@analytic)
  end

  def edit
  end

  def create
    @analytic = Analytic.new(analytic_params)
    @analytic.save
    respond_with(@analytic)
  end

  def update
    @analytic.update(analytic_params)
    respond_to do |format|
      if @analytic.update(analytic_params)
        format.html { redirect_to edit_analytic_path(@analytic), notice: 'Analytic Link was successfully updated.' }
        format.json { render :show, status: :ok, location: @analytic }
      else
        format.html { render :edit }
        format.json { render json: @analytic.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @analytic.destroy
    respond_with(@analytic)
  end

  private
    def set_analytic
      @analytic = Analytic.find(params[:id])
    end

    def analytic_params
      params.require(:analytic).permit(:url, :user_id)
    end
end
