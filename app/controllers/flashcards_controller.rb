class FlashcardsController < ApplicationController
  def index
    cards = FlashcardsFacade.card_info
    @card = cards.first
  end

  def show
    @card = Flashcard.find(params[:id])
  end
end
