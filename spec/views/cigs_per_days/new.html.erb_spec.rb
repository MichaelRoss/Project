require 'spec_helper'

describe "cigs_per_days/new" do
  before(:each) do
    assign(:cigs_per_day, stub_model(CigsPerDay,
      :no_of_cigs => 1
    ).as_new_record)
  end

  it "renders new cigs_per_day form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cigs_per_days_path, :method => "post" do
      assert_select "input#cigs_per_day_no_of_cigs", :name => "cigs_per_day[no_of_cigs]"
    end
  end
end
