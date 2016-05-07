require 'rails_helper'

feature 'create new group' do
  scenario 'create new group with valid data' do
    visit('/')
    click_on('New Group') # TODO Use id instead of text.

    fill_in('Title', with: 'Java Junkies')
    fill_in('Description', with: 'People who like java and all things on the JVM.')
    check('Accepting new members')
    click_on('Create Group')

    expect(page).to have_content('Group has been created.')
  end
end
