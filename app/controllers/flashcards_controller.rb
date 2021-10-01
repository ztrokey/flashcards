class FlashcardsController < ApplicationController
  def index
    cards = FlashcardsFacade.card_info
    @card = cards.first
  end

  def show
    @card = Flashcard.find(params[:id])
  end

  def update
    card = Flashcard.find(params[:id])
    if params[:user_answer].downcase == card.correct_answer.downcase
      card.update!({ correct: true })
      flash.alert = 'Correct, way to go!'
    else
      flash.alert = 'Sorry, better luck next time.'
    end
    redirect_to flashcards_path
  end
end
