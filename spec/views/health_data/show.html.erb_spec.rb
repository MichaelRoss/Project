require 'spec_helper'

describe "health_data/show" do
  before(:each) do
    @health_datum = assign(:health_datum, stub_model(HealthDatum,
      :weight => 1.5,
      :height => 1.5,
      :respitory_rate => 1,
      :blood_pressure => 2,
      :coughs_per_day => 3,
      :cigs_per_day => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
