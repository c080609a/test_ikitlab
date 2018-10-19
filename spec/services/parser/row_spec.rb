require "rails_helper"

RSpec.describe Parser::Row do
  let(:page) do
    path_to_page = "#{Dir.pwd}/spec/fixtures/files/page.html"
    Nokogiri::HTML(open(path_to_page))
  end
  let(:nokogiri_row) { page.search("tr#dph_RegistryContent_SearchResults_ctl01_registryListItem") }
  let(:row) { described_class.new nokogiri_row }
  let(:expected_attributes) do
    {
      name: "Nart Abaza",
      city: "Krasnodar",
      country: "Russian Federation",
      credential: "PMP",
      earned: "06 Jan 2016".to_date,
      status: "Active"
    }
  end

  it "has get_attributes method which will return expected_attributes" do
    expect(row.get_attributes).to eq(expected_attributes)
  end
end
