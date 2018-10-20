require "rails_helper"

RSpec.describe UserCreateForm do
  let(:attributes) do
    {
      name: "Nart Abaza",
      city: "Krasnodar",
      country: "Russian Federation",
      credential: "PMP",
      earned: "06 Jan 2016".to_date,
      status: "Active"
    }
  end

  let(:user) { described_class.new(attributes) }

  context "save method which" do
    it "create new if User does not contain record with same name" do
      expect { user.save }.to change(User, :count).by(1)
    end

    it "does not create new record if User with same name is existed" do
      FactoryBot.create(:user, name: attributes[:name])
      expect { user.save }.to change(User, :count).by(0)
    end
  end
end
