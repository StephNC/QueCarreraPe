class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @career = Career.find(params[:career_id])
    @review.career = @career
    @review.user = current_user
    flash[:notice] = @review.errors.full_messages.to_sentence unless @review.save

    redirect_to career_path(@career)

  end

  def destroy
    @career = Career.find(params[:career_id])
    @review = Review.find(params[:id])

    @review.destroy

    redirect_to career_path(@career)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
