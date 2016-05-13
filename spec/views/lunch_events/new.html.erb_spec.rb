require 'rails_helper'

RSpec.describe "lunch_events/new", type: :view do
  before(:each) do
    assign(:lunch_event, LunchEvent.new(
      :group => nil
    ))
  end

  it "renders new lunch_event form" do
    render

    assert_select "form[action=?][method=?]", lunch_events_path, "post" do

      assert_select "input#lunch_event_group_id[name=?]", "lunch_event[group_id]"
    end
  end
end
