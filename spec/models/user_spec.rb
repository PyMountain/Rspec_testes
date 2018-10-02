require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create :user}
  let(:invalid_user) {FactoryBot.build :user, name: "aa", email: "aa"}
  it {expect(user.name).to be_truthy}

  it {expect(user.email).to be_truthy}

  it "should have valid name" do
    invalid_user.save
    expect(invalid_user).to be_invalid
  end

  it "should have valid email" do
    invalid_user.save
    expect(invalid_user).to be_invalid
  end
end
