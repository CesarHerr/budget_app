require 'rails_helper'

RSpec.describe 'Add a new category form', type: :feature do
  before :each do
    @user = User.create(name: 'Test name', email: 'email@email.com', password: '123456')

    sign_in @user
    visit new_group_path
  end

  scenario 'User should create a new category' do
    radio_buttons = all("input[type='radio'][name='group[icon]']")
    fill_in 'Name', with: 'Test category'
    choose(radio_buttons.first['id'].to_s)
    click_on 'Create Category'

    expect(page).to have_content('Test category')
  end
end
