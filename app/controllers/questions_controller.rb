class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # le coach lit la réponse de l'user depuis les params
    qu = params[:question]
    if qu == "I am going to work"
      @answer = "Great"
    elsif qu.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
