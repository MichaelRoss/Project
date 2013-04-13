require 'spec_helper'

describe "meetings/index" do
  before(:each) do
    assign(:meetings, [
      stub_model(Meeting,
        :requested_by => 1,
        :with => 2,
        :response => false,
        :notes => "MyText"
      ),
      stub_model(Meeting,
        :requested_by => 1,
        :with => 2,
        :response => false,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of meetings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
