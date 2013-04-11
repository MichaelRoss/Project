require 'spec_helper'

describe "cigs_per_days/edit" do
  before(:each) do
    @cigs_per_day = assign(:cigs_per_day, stub_model(CigsPerDay,
      :no_of_cigs => 1
    ))
  end

  it "renders the edit cigs_per_day form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cigs_per_days_path(@cigs_per_day), :method => "post" do
      assert_select "input#cigs_per_day_no_of_cigs", :name => "cigs_per_day[no_of_cigs]"
    end
  end
end
