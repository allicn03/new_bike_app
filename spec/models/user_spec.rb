require 'rails_helper'

describe User do
  let(:user) { User.create!(password:"newpassword", email:"email@email.com") }

  it "it is a valid email" do
    expect(user.email).to eq "email@email.com"
  end

  it "it is a valid password" do
    expect(user.password).to eq "newpassword"
  end

  it "it is not valid without an email" do
    user.email = nil
    expect(user).to_not be_valid
  end
end
