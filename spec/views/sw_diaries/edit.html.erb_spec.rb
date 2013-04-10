require 'spec_helper'

describe "sw_diaries/edit" do
  before(:each) do
    @sw_diary = assign(:sw_diary, stub_model(SwDiary,
      :diary => "MyText"
    ))
  end

  it "renders the edit sw_diary form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sw_diaries_path(@sw_diary), :method => "post" do
      assert_select "textarea#sw_diary_diary", :name => "sw_diary[diary]"
    end
  end
end
