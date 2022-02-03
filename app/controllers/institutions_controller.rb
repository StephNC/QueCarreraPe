class InstitutionsController < ApplicationController
  def index
    @institutions = Institution.all
  end

  def show
    @institution = Institution.find(params[:id])
  end

  def new
    @institution = Institution.new
  end

  def edit
    @institution = Institution.find(params[:id])
  end

  def create
    @institution = Institution.find(institution_params)
    if @institution.save
      redirect_to institution_path(@institution)
    else
      render :new
    end
  end

  def update
    @institution = Institution.find(params[:id])
    if @institution.update(institution_params)
      redirect_to institution_path(@institution)
    else
      render :edit
    end
  end

  def destroy
    @institution = Institution.find(params[:id])
    @institution.destroy

    redirect_to institutions_path
  end

  private

  def institution_params
    params.require(:institution).permit(:name, :address, :phone, :email, :url, :description)
  end
end