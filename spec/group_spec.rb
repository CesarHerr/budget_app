require 'rails_helper'

RSpec.describe Group, type: :model do
  before :each do
    user = User.create(name: 'test name', email: 'email@email.com', password: '123456')
    @group = Group.create(name: 'test group', icon: 'icons/foods', user:)
  end

  describe 'validations' do
    it 'should validate presence of name' do
      expect(@group).to be_valid
      expect(@group.name).to eq('test group')
    end
    it 'should not be valid without a name' do
      group = Group.create(icon: 'icons/foods', user: @group.user)
      expect(group).to_not be_valid
    end
    it 'should validate presence of icon' do
      expect(@group).to be_valid
      expect(@group.icon).to eq('icons/foods')
    end
    it 'should not be valid without an icon' do
      group = Group.create(name: 'test name', user: @group.user)
      expect(group).to_not be_valid
    end
    it 'should not be valid with a name larger than 15 characters' do
      group = Group.create(name: 'test larger than 15', icon: 'icons/foods', user: @group.user)
      expect(group).to_not be_valid
    end
  end
end
