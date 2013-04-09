require 'spec_helper'

describe "gp_diagnoses/edit" do
  before(:each) do
    @gp_diagnosis = assign(:gp_diagnosis, stub_model(GpDiagnosis,
      :diagnosis => "MyText"
    ))
  end

  it "renders the edit gp_diagnosis form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gp_diagnoses_path(@gp_diagnosis), :method => "post" do
      assert_select "textarea#gp_diagnosis_diagnosis", :name => "gp_diagnosis[diagnosis]"
    end
  end
end
