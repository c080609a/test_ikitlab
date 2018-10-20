require "rails_helper"

RSpec.describe Parser::PageService do
  let(:nokogiri_page) do
    path_to_page = "#{Dir.pwd}/spec/fixtures/files/page.html"
    Nokogiri::HTML(open(path_to_page))
  end
  let(:page) { described_class.new nokogiri_page }
  let(:expected_attributes) do
    [
      {
        name: "Nart Abaza",
        city: "Krasnodar",
        country: "Russian Federation",
        credential: "PMP",
        earned: "06 Jan 2016".to_date,
        status: "Active"
      },
      {
        name: "Nart Abaza",
        city: "Krasnodar",
        country: "Russian Federation",
        credential: "PMP",
        earned: "01 Jul 2010".to_date,
        status: "Active"
      }
    ]
  end

  it "has .call method which will return expected_attributes" do
    expect(page.call).to eq(expected_attributes)
  end
end
