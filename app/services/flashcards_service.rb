class FlashcardsService
  class << self
    def get_cards
      response = conn.get
      parse_json(response)
    end

    private

    def conn
      Faraday.new(
        url: 'https://opentdb.com/api.php',
        params: {
          amount: 1,
          type: 'boolean'
        }
      )
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
