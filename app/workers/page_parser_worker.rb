class PageParserWorker
  include Sidekiq::Worker

  def perform(character)
    Parser::ScraperService.new(character).call
  end
end
