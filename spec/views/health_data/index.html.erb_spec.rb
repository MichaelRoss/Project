require 'spec_helper'

describe "health_data/index" do
  before(:each) do
    assign(:health_data, [
      stub_model(HealthDatum,
        :weight => 1.5,
        :height => 1.5,
        :respitory_rate => 1,
        :blood_pressure => 2,
        :coughs_per_day => 3,
        :cigs_per_day => 4
      ),
      stub_model(HealthDatum,
        :weight => 1.5,
        :height => 1.5,
        :respitory_rate => 1,
        :blood_pressure => 2,
        :coughs_per_day => 3,
        :cigs_per_day => 4
      )
    ])
  end

  it "renders a list of health_data" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
