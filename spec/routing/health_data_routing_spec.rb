require "spec_helper"

describe HealthDataController do
  describe "routing" do

    it "routes to #index" do
      get("/health_data").should route_to("health_data#index")
    end

    it "routes to #new" do
      get("/health_data/new").should route_to("health_data#new")
    end

    it "routes to #show" do
      get("/health_data/1").should route_to("health_data#show", :id => "1")
    end

    it "routes to #edit" do
      get("/health_data/1/edit").should route_to("health_data#edit", :id => "1")
    end

    it "routes to #create" do
      post("/health_data").should route_to("health_data#create")
    end

    it "routes to #update" do
      put("/health_data/1").should route_to("health_data#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/health_data/1").should route_to("health_data#destroy", :id => "1")
    end

  end
end
