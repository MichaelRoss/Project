require 'spec_helper'

describe "cigs_per_days/index" do
  before(:each) do
    assign(:cigs_per_days, [
      stub_model(CigsPerDay,
        :no_of_cigs => 1
      ),
      stub_model(CigsPerDay,
        :no_of_cigs => 1
      )
    ])
  end

  it "renders a list of cigs_per_days" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
