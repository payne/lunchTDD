require 'rails_helper'

RSpec.describe "LunchEvents", type: :request do
  describe "GET /lunch_events" do
    it "works! (now write some real specs)" do
      get lunch_events_path
      expect(response).to have_http_status(200)
    end
  end
end
