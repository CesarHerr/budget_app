require 'rails_helper'

RSpec.feature 'Visit group index page', type: :feature do
  before :each do
    @user = User.create(name: 'test name', email: 'email@email.com', password: '123456')
    @group = Group.create(name: 'test 1 group', icon: 'foods.png', user: @user)
    @group2 = Group.create(name: 'test 2 group', icon: 'foods.png', user: @user)
    @group3 = Group.create(name: 'test 3 group', icon: 'foods.png', user: @user)

    sign_in @user
    visit groups_path
  end

  it 'Should list all groups' do
    expect(page).to have_content(@group.name)
    expect(page).to have_content(@group2.name)
    expect(page).to have_content(@group3.name)
  end

  it 'Should find buttons "New Category" and "Sign out" ' do
    expect(page).to have_content('New Category')
    expect(page).to have_content('Sign Out')
  end

  it 'When click on "New Category" button should redirect to new Category page' do
    click_on 'New Category'
    expect(page).to have_current_path(new_group_path)
  end

  it 'When click on a group (Category) should redirect to group show page (transactions)' do
    click_on @group.name
    expect(page).to have_current_path(group_path(@group))
  end

  it 'When click on Sign Out button should redirect to root page' do
    click_on 'Sign Out'
    expect(page).to have_current_path(root_path)
  end
end
