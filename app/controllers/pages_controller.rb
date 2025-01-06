class PagesController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @coach_answer = "Ask a question fool!"
    elsif @question == "I am going to work"
      @coach_answer = "Great!"
    elsif @question[-1] == "?"
      @coach_answer =  "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
    @coach_answer
end
end
