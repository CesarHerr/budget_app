require 'rails_helper'

RSpec.describe 'Add a new category form', type: :feature do
  before :each do
    @user = User.create(name: 'Test name', email: 'email@email.com', password: '123456')
    @group = Group.create(name: 'Test group', icon: 'food.png', user: @user)

    sign_in @user
    visit new_group_paid_up_path(@group, @user)
  end

  it 'should have a form to create a new transaction' do
    expect(page).to have_content('New Transaction')
    expect(page).to have_selector('input#paid_up_name')
  end

  scenario 'User should create a new transaction' do
    fill_in 'Name', with: 'Test Transaction Name'
    check

    click_on 'Add Transaction'

    expect(page).to have_content('Test transaction')
  end
end
