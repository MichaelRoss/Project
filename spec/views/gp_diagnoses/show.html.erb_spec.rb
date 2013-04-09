require 'spec_helper'

describe "gp_diagnoses/show" do
  before(:each) do
    @gp_diagnosis = assign(:gp_diagnosis, stub_model(GpDiagnosis,
      :diagnosis => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
