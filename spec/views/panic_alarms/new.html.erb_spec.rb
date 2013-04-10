require 'spec_helper'

describe "panic_alarms/new" do
  before(:each) do
    assign(:panic_alarm, stub_model(PanicAlarm,
      :activated => false
    ).as_new_record)
  end

  it "renders new panic_alarm form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => panic_alarms_path, :method => "post" do
      assert_select "input#panic_alarm_activated", :name => "panic_alarm[activated]"
    end
  end
end
