require "rails_helper"

RSpec.describe LunchEventsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lunch_events").to route_to("lunch_events#index")
    end

    it "routes to #new" do
      expect(:get => "/lunch_events/new").to route_to("lunch_events#new")
    end

    it "routes to #show" do
      expect(:get => "/lunch_events/1").to route_to("lunch_events#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lunch_events/1/edit").to route_to("lunch_events#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lunch_events").to route_to("lunch_events#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lunch_events/1").to route_to("lunch_events#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lunch_events/1").to route_to("lunch_events#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lunch_events/1").to route_to("lunch_events#destroy", :id => "1")
    end

  end
end
