class ClerksController < ApplicationController
  before_action :set_clerk, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @clerks = Clerk.all
    respond_with(@clerks)
  end

  def show
    respond_with(@clerk)
  end

  def new
    @clerk = Clerk.new
    respond_with(@clerk)
  end

  def edit
  end

  def create
    @clerk = Clerk.new(clerk_params)
    @clerk.save
    respond_with(@clerk)
  end

  def update
    @clerk.update(clerk_params)
    respond_with(@clerk)
  end

  def destroy
    @clerk.destroy
    respond_with(@clerk)
  end

  private
    def set_clerk
      @clerk = Clerk.find(params[:id])
    end

    def clerk_params
      params[:clerk]
    end
end
