require 'spec_helper'

describe "sw_diaries/new" do
  before(:each) do
    assign(:sw_diary, stub_model(SwDiary,
      :diary => "MyText"
    ).as_new_record)
  end

  it "renders new sw_diary form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sw_diaries_path, :method => "post" do
      assert_select "textarea#sw_diary_diary", :name => "sw_diary[diary]"
    end
  end
end
