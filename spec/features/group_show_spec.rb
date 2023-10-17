require 'rails_helper'

RSpec.describe 'Visit group show page (Transactions)', type: :feature do
  before :each do
    @user = User.create(name: 'test name', email: 'email@email.com', password: '123456')
    @group = Group.create(name: 'test 1 group', icon: 'foods.png', user: @user)
    @paid_up1 = PaidUp.create(name: 'Test 1 paid_up', amount: 100, author: @user, group_id: @group.id)
    @paid_up2 = PaidUp.create(name: 'Test 2 paid_up', amount: 200, author: @user, group_id: @group.id)

    sign_in @user
    visit group_path(@group)
  end

  it 'Should list all paid_ups (transactions)' do
    expect(page).to have_content(@paid_up1.name)
    expect(page).to have_content(@paid_up2.name)
  end

  it 'Should find buttons "New Transaction", "Sign out" and "◀️ back" ' do
    expect(page).to have_content('New transaction')
    expect(page).to have_content('◀️')
    expect(page).to have_content('Sign Out')
  end

  it 'When click on "New transaction" button should redirect to new transaction page' do
    click_on 'New transaction'
    expect(page).to have_current_path(new_group_paid_up_path(@group, @user))
  end

  it 'When click on a transaction should redirect to paid_up show page (transaction detail)' do
    click_on @paid_up1.name
    expect(page).to have_current_path(group_paid_up_path(@group, @paid_up1))
  end

  it 'When click on "back" button should redirect to categories page' do
    click_on '◀️'
    expect(page).to have_current_path(groups_path(@user))
  end
end
