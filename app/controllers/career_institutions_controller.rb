class CareerInstitutionsController < ApplicationController
  def show
    @career_institution = CareerInstitution.find(params[:id])
  end

  def new
    @career = Career.find(params[:career_id])
    @career_institution = CareerInstitution.new
  end

  def create
    @career_institution = CareerInstitution.new(career_institution_params)
    @career = Career.find(params[:career_id])
    @career_institution.career = @career

    if @career_institution.save
      redirect_to career_institution_path(@career_institution)
    else
      render :new
    end
  end

  def edit
    @career_institution = CareerInstitution.find(params[:id])
  end

  def update
    @career_institution = CareerInstitution.find(params[:id])
    if @career_institution.update(career_institution_params)
      redirect_to career_institution_path(@career_institution)
    else
      render :edit
    end
  end

  def destroy
    @career_institution = CareerInstitution.find(params[:id])
    @career_institution.destroy

    redirect_to careers_path
  end

  private

  def career_institution_params
    params.require(:career_institution).permit(:institution_id)
  end
end
