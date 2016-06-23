class ReviewersController < ApplicationController
  before_action :set_reviewer, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @reviewers = Reviewer.all
    respond_with(@reviewers)
  end

  def show
    respond_with(@reviewer)
  end

  def new
    @reviewer = Reviewer.new
    respond_with(@reviewer)
  end

  def edit
  end

  def create
    @reviewer = Reviewer.new(reviewer_params)
    @reviewer.save
    respond_with(@reviewer)
  end

  def update
    @reviewer.update(reviewer_params)
    respond_with(@reviewer)
  end

  def destroy
    @reviewer.destroy
    respond_with(@reviewer)
  end

  private
    def set_reviewer
      @reviewer = Reviewer.find(params[:id])
    end

    def reviewer_params
      params[:reviewer].permit(:school_id)
    end
end
