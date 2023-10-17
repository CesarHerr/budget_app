require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create(name: 'test name', email: 'email@email.com', password: '123456')
  end

  describe 'validations' do
    it 'should validate presence of name' do
      expect(@user.name).to eq('test name')
    end
    it 'should validate presence of email' do
      expect(@user.email).to eq('email@email.com')
    end
    it 'should validate presence of password' do
      expect(@user.password).to eq('123456')
    end
  end
end
