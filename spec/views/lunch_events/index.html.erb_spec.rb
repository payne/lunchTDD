require 'rails_helper'

RSpec.describe "lunch_events/index", type: :view do
  before(:each) do
    assign(:lunch_events, [
      LunchEvent.create!(
        :group => nil
      ),
      LunchEvent.create!(
        :group => nil
      )
    ])
  end

  it "renders a list of lunch_events" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
