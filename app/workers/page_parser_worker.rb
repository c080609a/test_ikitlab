class PageParserWorker
  include Sidekiq::Worker

  def perform(char)
    ScraperService.new(char).call
  end
end
