class FlashcardsController < ApplicationController
  # GET /flashcards
  def index
    @flashcards = Flashcard.all

    render json: @flashcards
  end

  def add_flashcard_to_topic
    @flashcard = Topic.find(params[:food_id])
    @flashcard = Flashcard.find(params[:id])

    @topic.flashcards << @flashcard

    render json: @topic, include: :flashcards
  end
end
