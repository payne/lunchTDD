require 'rails_helper'

feature 'group page' do
  scenario 'group public page' do
    group_title = 'Java and JVM Junkies'
    group = Group.create(title: group_title)
    visit("/groups/#{group.id}")

    expect(page).to have_content(group_title)
  end
end
