class QuestionsController < ApplicationController
  def ask

  end
  def answer
    if (params[:question] != 'I am going to work') && (params[:question] != 'I am going to work'.upcase) && (params[:question] != 'I am going to work'.downcase)
      motivation = params[:question].upcase == params[:question] ? 'Great!' : ''
      if params[:question].include? '?'
        @answer = "#{motivation}Silly question, get dressed and go to work!"
      else
        @answer = "#{motivation}I don't care, get dressed and go to work!"
      end
    else
      @answer = 'Great!'
    end
  end
end
