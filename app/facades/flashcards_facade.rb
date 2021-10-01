class FlashcardsFacade
  class << self
    def card_info
      info = FlashcardsService.get_cards
      cards = info[:results]
      cards.map do |card|
        attributes = {
          category: card[:category],
          question_type: card[:type],
          difficulty: card[:difficulty],
          question: (CGI.unescape_html card[:question]),
          correct_answer: card[:correct_answer]
        }
        Flashcard.create!(attributes)
      end
    end
  end
end
