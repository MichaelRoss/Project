require 'spec_helper'

describe "meetings/show" do
  before(:each) do
    @meeting = assign(:meeting, stub_model(Meeting,
      :requested_by => 1,
      :with => 2,
      :response => false,
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
  end
end
