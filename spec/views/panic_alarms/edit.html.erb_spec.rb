require 'spec_helper'

describe "panic_alarms/edit" do
  before(:each) do
    @panic_alarm = assign(:panic_alarm, stub_model(PanicAlarm,
      :activated => false
    ))
  end

  it "renders the edit panic_alarm form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => panic_alarms_path(@panic_alarm), :method => "post" do
      assert_select "input#panic_alarm_activated", :name => "panic_alarm[activated]"
    end
  end
end
