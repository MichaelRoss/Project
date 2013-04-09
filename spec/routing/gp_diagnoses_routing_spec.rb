require "spec_helper"

describe GpDiagnosesController do
  describe "routing" do

    it "routes to #index" do
      get("/gp_diagnoses").should route_to("gp_diagnoses#index")
    end

    it "routes to #new" do
      get("/gp_diagnoses/new").should route_to("gp_diagnoses#new")
    end

    it "routes to #show" do
      get("/gp_diagnoses/1").should route_to("gp_diagnoses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/gp_diagnoses/1/edit").should route_to("gp_diagnoses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/gp_diagnoses").should route_to("gp_diagnoses#create")
    end

    it "routes to #update" do
      put("/gp_diagnoses/1").should route_to("gp_diagnoses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/gp_diagnoses/1").should route_to("gp_diagnoses#destroy", :id => "1")
    end

  end
end
