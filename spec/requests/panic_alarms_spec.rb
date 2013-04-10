require 'spec_helper'

describe "PanicAlarms" do
  describe "GET /panic_alarms" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get panic_alarms_path
      response.status.should be(200)
    end
  end
end
