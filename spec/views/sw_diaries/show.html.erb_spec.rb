require 'spec_helper'

describe "sw_diaries/show" do
  before(:each) do
    @sw_diary = assign(:sw_diary, stub_model(SwDiary,
      :diary => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
