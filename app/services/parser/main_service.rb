class Parser::MainService
  def initialize
    @alphabet = ["a"] # test only symbol 'a'
  end

  def call
    @alphabet.each do |character|
      # PageParserWorker.perform_async(character) #call to background
      Parser::ScraperService.new(character).call # call with button
    end
  end
end
