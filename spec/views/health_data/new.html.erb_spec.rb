require 'spec_helper'

describe "health_data/new" do
  before(:each) do
    assign(:health_datum, stub_model(HealthDatum,
      :weight => 1.5,
      :height => 1.5,
      :respitory_rate => 1,
      :blood_pressure => 1,
      :coughs_per_day => 1,
      :cigs_per_day => 1
    ).as_new_record)
  end

  it "renders new health_datum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => health_data_path, :method => "post" do
      assert_select "input#health_datum_weight", :name => "health_datum[weight]"
      assert_select "input#health_datum_height", :name => "health_datum[height]"
      assert_select "input#health_datum_respitory_rate", :name => "health_datum[respitory_rate]"
      assert_select "input#health_datum_blood_pressure", :name => "health_datum[blood_pressure]"
      assert_select "input#health_datum_coughs_per_day", :name => "health_datum[coughs_per_day]"
      assert_select "input#health_datum_cigs_per_day", :name => "health_datum[cigs_per_day]"
    end
  end
end
