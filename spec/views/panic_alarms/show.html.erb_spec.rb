require 'spec_helper'

describe "panic_alarms/show" do
  before(:each) do
    @panic_alarm = assign(:panic_alarm, stub_model(PanicAlarm,
      :activated => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
