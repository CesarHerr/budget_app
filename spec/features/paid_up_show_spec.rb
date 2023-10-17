require 'rails_helper'

RSpec.feature 'Visit group show page (Transactions)', type: :feature do
  before :each do
    @user = User.create(name: 'test name', email: 'email@email.com', password: '123456')
    @group = Group.create(name: 'test group', icon: 'foods.png', user: @user)
    @paid_up = PaidUp.create(name: 'Test paid_up', amount: 100, author: @user, group_id: @group.id)

    sign_in @user
    visit group_paid_up_path(@group, @paid_up)
  end

  it 'Should see the transaction info' do
    expect(page).to have_content(@paid_up.name)
    expect(page).to have_content(@paid_up.amount)
    expect(page).to have_content(@paid_up.created_at)
  end

  it 'Should find buttons "Sign out" and "◀️ back" ' do
    expect(page).to have_content('◀️')
    expect(page).to have_content('Sign Out')
  end

  it 'When click on "back" button should redirect to categories page' do
    click_on '◀️'
    expect(page).to have_current_path(group_path(@group))
  end

  it 'When click on "Sign Out" button should redirect to welcome page' do
    click_on 'Sign Out'
    expect(page).to have_current_path(root_path)
  end
end
