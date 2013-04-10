require 'spec_helper'

describe "sw_diaries/index" do
  before(:each) do
    assign(:sw_diaries, [
      stub_model(SwDiary,
        :diary => "MyText"
      ),
      stub_model(SwDiary,
        :diary => "MyText"
      )
    ])
  end

  it "renders a list of sw_diaries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
