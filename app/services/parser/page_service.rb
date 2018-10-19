class Parser::PageService
  def initialize(page)
    @page = page
  end

  def call
    build
  end

  private

  def build
    @page.search("tr[id]").map do |tr|
      Parser::RowService.new(tr).call
    end
  end
end
