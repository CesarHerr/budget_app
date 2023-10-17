require 'rails_helper'

RSpec.describe PaidUp, type: :model do
  before :each do
    user = User.create(name: 'test name', email: 'email@email.com', password: '123456')
    @group = Group.create(name: 'test group', icon: 'icons/foods', user:)
    @paid_up = PaidUp.create(name: 'test paid_up', amount: 10, author: user, group_id: @group.id)
  end

  describe 'validations' do
    it 'Should validate presence of name' do
      expect(@paid_up).to be_valid
      expect(@paid_up.name).to eq('test paid_up')
    end
    it 'Should not be valid without a name' do
      paid_up = PaidUp.create(amount: 10, author: @paid_up.author, group_id: @group.id)
      expect(paid_up).to_not be_valid
    end
    it 'Should validate presence of amount' do
      expect(@paid_up).to be_valid
      expect(@paid_up.amount).to eq(10)
    end
    it 'Should not be valid if amount is < 0' do
      paid_up = PaidUp.create(name: 'test paid_up', amount: -5, author: @paid_up.author, group_id: @group.id)
      expect(paid_up).to_not be_valid
    end
    it 'Should not be valid with a name larger than 20 characters' do
      paid_up = PaidUp.create(name: 'this test larger than 20', amount: 10, author: @paid_up.author, group_id: @group.id)
      expect(paid_up).to_not be_valid
    end
  end
end
