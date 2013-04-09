require 'spec_helper'

describe "GpDiagnoses" do
  describe "GET /gp_diagnoses" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get gp_diagnoses_path
      response.status.should be(200)
    end
  end
end
