class DomainsController < ApplicationController
  before_action :set_domain, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @domains = Domain.all
    respond_with(@domains)
  end

  def show
    respond_with(@domain)
  end

  def new
    @domain = Domain.new
    respond_with(@domain)
  end

  def edit
  end

  def create
    @domain = Domain.new(domain_params)
    @domain.save
    respond_with(@domain)
  end

  def update
    @domain.update(domain_params)
    respond_to do |format|
      if @domain.update(domain_params)
        format.html { redirect_to edit_domain_path(@domain), notice: 'Domain Name was successfully updated.' }
        format.json { render :show, status: :ok, location: @domain }
      else
        format.html { render :edit }
        format.json { render json: @domain.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @domain.destroy
    respond_with(@domain)
  end

  private
    def set_domain
      @domain = Domain.find(params[:id])
    end

    def domain_params
      params.require(:domain).permit(:url)
    end
end
