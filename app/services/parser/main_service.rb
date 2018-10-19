class Parser::MainService
  def initialize
    @alphabet = ["a"] # test only symbol 'a'
  end

  def call
    @alphabet.each do |character|
      # PageParserWorker.perform_async(character)
      Parser::ScraperService.new(character).call
    end
  end
end
