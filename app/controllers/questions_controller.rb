class QuestionsController < ApplicationController
  def ask
	end

	def answer
		@your_message = params[:question]
		@answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
		@answer = ""
		if @your_message === "I am going to work"
			@answer =	@answers[0]
		elsif @your_message.include?("?")
			@answer = @answers[1]
		else
			@answer =	@answers[2]
		end
	end
end
