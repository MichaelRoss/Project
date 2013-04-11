require "spec_helper"

describe CigsPerDaysController do
  describe "routing" do

    it "routes to #index" do
      get("/cigs_per_days").should route_to("cigs_per_days#index")
    end

    it "routes to #new" do
      get("/cigs_per_days/new").should route_to("cigs_per_days#new")
    end

    it "routes to #show" do
      get("/cigs_per_days/1").should route_to("cigs_per_days#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cigs_per_days/1/edit").should route_to("cigs_per_days#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cigs_per_days").should route_to("cigs_per_days#create")
    end

    it "routes to #update" do
      put("/cigs_per_days/1").should route_to("cigs_per_days#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cigs_per_days/1").should route_to("cigs_per_days#destroy", :id => "1")
    end

  end
end
