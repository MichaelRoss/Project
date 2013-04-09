require 'spec_helper'

describe "gp_diagnoses/index" do
  before(:each) do
    assign(:gp_diagnoses, [
      stub_model(GpDiagnosis,
        :diagnosis => "MyText"
      ),
      stub_model(GpDiagnosis,
        :diagnosis => "MyText"
      )
    ])
  end

  it "renders a list of gp_diagnoses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
