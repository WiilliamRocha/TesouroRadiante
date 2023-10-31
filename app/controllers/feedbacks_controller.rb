# app/controllers/feedbacks_controller.rb
class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end
  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.user = current_user
    if @feedback.save
      redirect_to @feedback.product, notice: 'Feedback was successfully created.'
    else
      redirect_back(fallback_location: root_path, alert: 'Error creating feedback.')
    end
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
    redirect_to @feedback.product, notice: 'Feedback was successfully removed.'
  end

  private

  def feedback_params
    params.require(:feedback).permit(:content, :product_id)
  end
end
