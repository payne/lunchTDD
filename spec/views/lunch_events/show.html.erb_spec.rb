require 'rails_helper'

RSpec.describe "lunch_events/show", type: :view do
  before(:each) do
    @lunch_event = assign(:lunch_event, LunchEvent.create!(
      :group => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
