class QuestionsController < ApplicationController
  def ask
    @ask = params[:question]
  end

  def answer
    if ask == 'I am going to work'
      @response = 'Great'
    elsif ask.include?('?')
      @response = 'Silly question, get dressed and go to work!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
