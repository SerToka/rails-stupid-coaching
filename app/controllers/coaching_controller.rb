class CoachingController < ApplicationController
  def ask
  end

  def answer
    @question = params[:query]
    @reponse = coach_answer(@question)
  end

  private

  def coach_answer(question)
    if question.include? "time"
      "to buy a watch"
    else
      "Winter is coming"
    end
  end
end
