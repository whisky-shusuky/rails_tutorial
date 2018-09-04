require 'rails_helper'

RSpec.describe User, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"

  let(:user) {FactoryBot.create(:user)}

  it "is valid with a name, email."do
    expect(user).to be_valid
  end

  it "is valid without a name."do
    user = FactoryBot.build(:user, name: "")
    expect(user).to be_valid
  end

end 
