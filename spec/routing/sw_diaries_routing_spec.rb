require "spec_helper"

describe SwDiariesController do
  describe "routing" do

    it "routes to #index" do
      get("/sw_diaries").should route_to("sw_diaries#index")
    end

    it "routes to #new" do
      get("/sw_diaries/new").should route_to("sw_diaries#new")
    end

    it "routes to #show" do
      get("/sw_diaries/1").should route_to("sw_diaries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sw_diaries/1/edit").should route_to("sw_diaries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sw_diaries").should route_to("sw_diaries#create")
    end

    it "routes to #update" do
      put("/sw_diaries/1").should route_to("sw_diaries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sw_diaries/1").should route_to("sw_diaries#destroy", :id => "1")
    end

  end
end
