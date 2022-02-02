class CareersController < ApplicationController
  before_action :set_career, only: [ :show, :edit, :update, :destroy ]

  def index
    @careers = Career.all
  end

  def show
  end

  def new
    @career = Career.new
  end

  def create
    @career = Career.new(career_params)
    if @career.save
      redirect_to careers_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    # @career.user = current_user
    @career.update(career_params)

    redirect_to career_path(@career)
  end

  def destroy
    @career.destroy
    redirect_to careers_path
  end

  private

  def career_params
    params.require(:career).permit(:name, :area, :duration, :profile, :description)
  end

  def set_career
    @career = Career.find(params[:id])
  end
end
