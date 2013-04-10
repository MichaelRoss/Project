require "spec_helper"

describe PanicAlarmsController do
  describe "routing" do

    it "routes to #index" do
      get("/panic_alarms").should route_to("panic_alarms#index")
    end

    it "routes to #new" do
      get("/panic_alarms/new").should route_to("panic_alarms#new")
    end

    it "routes to #show" do
      get("/panic_alarms/1").should route_to("panic_alarms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/panic_alarms/1/edit").should route_to("panic_alarms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/panic_alarms").should route_to("panic_alarms#create")
    end

    it "routes to #update" do
      put("/panic_alarms/1").should route_to("panic_alarms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/panic_alarms/1").should route_to("panic_alarms#destroy", :id => "1")
    end

  end
end
