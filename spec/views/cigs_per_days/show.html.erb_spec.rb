require 'spec_helper'

describe "cigs_per_days/show" do
  before(:each) do
    @cigs_per_day = assign(:cigs_per_day, stub_model(CigsPerDay,
      :no_of_cigs => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
