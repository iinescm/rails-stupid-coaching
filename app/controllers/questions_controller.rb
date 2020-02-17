class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @message = params[:question]
    if @message == 'I am going to work'
      @ask = 'Great!'
    elsif @message.last == '?'
      @ask = 'Silly question, get dressed and go to work!'
    else
      @ask = 'I do not care, get dressed and go to work!'
    end
  end
end
