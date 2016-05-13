require 'rails_helper'

RSpec.describe "lunch_events/edit", type: :view do
  before(:each) do
    @lunch_event = assign(:lunch_event, LunchEvent.create!(
      :group => nil
    ))
  end

  it "renders the edit lunch_event form" do
    render

    assert_select "form[action=?][method=?]", lunch_event_path(@lunch_event), "post" do

      assert_select "input#lunch_event_group_id[name=?]", "lunch_event[group_id]"
    end
  end
end
