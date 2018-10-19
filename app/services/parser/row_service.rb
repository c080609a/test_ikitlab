class Parser::RowService
  def initialize(row)
    @row = row
    @headers = %i[name city country credential earned status]
  end

  def call
    res = {}
    @row.search("td span").each_with_index do |span, index|
      header = @headers[index]
      res[header] = header == :earned ? span.text.to_date : span.text.to_s
    end
    res
  end
end
