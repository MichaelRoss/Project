require 'spec_helper'

describe "meetings/edit" do
  before(:each) do
    @meeting = assign(:meeting, stub_model(Meeting,
      :requested_by => 1,
      :with => 1,
      :response => false,
      :notes => "MyText"
    ))
  end

  it "renders the edit meeting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meetings_path(@meeting), :method => "post" do
      assert_select "input#meeting_requested_by", :name => "meeting[requested_by]"
      assert_select "input#meeting_with", :name => "meeting[with]"
      assert_select "input#meeting_response", :name => "meeting[response]"
      assert_select "textarea#meeting_notes", :name => "meeting[notes]"
    end
  end
end
