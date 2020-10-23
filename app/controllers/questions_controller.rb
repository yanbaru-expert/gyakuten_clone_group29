class QuestionsController < ApplicationController
  def create
    question = Question.create!(question_params)
    redirect_to question
  end

  def index
    @questions = Question.all.order(id: :desc)
  end

  def show
    @question = Question.find(params[:id])
  end

  private
  def question_params
    params.require(:question).permit(:title, :detail)
  end
end
