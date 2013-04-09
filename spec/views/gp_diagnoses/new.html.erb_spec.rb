require 'spec_helper'

describe "gp_diagnoses/new" do
  before(:each) do
    assign(:gp_diagnosis, stub_model(GpDiagnosis,
      :diagnosis => "MyText"
    ).as_new_record)
  end

  it "renders new gp_diagnosis form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gp_diagnoses_path, :method => "post" do
      assert_select "textarea#gp_diagnosis_diagnosis", :name => "gp_diagnosis[diagnosis]"
    end
  end
end
