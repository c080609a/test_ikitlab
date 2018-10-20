FactoryBot.define do
  factory :user do
    name       { FFaker::Name.name }
    region     { FFaker::AddressDA.region }
    city       { FFaker::Address.city }
    country    { FFaker::Address.country }
    credential { "PMP" }
    earned     { FFaker::Time.datetime }
    status     { "Active" }
  end
end
