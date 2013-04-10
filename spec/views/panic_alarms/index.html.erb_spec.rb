require 'spec_helper'

describe "panic_alarms/index" do
  before(:each) do
    assign(:panic_alarms, [
      stub_model(PanicAlarm,
        :activated => false
      ),
      stub_model(PanicAlarm,
        :activated => false
      )
    ])
  end

  it "renders a list of panic_alarms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
