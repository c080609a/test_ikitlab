require "rails_helper"

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user) }

  it "save successfuly if build from FactoryBot" do
    expect(user.save!).to eq(true)
  end

  describe "validations" do
    it { is_expected.to validate_presence_of :name }
  end
end
