require 'spec_helper'

describe "festivals/index" do
  before(:each) do
    assign(:festivals, [
      stub_model(Festival,
        :name => "Name",
        :logo => "Logo",
        :lineup => "MyText",
        :details => "MyText",
        :camping => false,
        :month => 1
      ),
      stub_model(Festival,
        :name => "Name",
        :logo => "Logo",
        :lineup => "MyText",
        :details => "MyText",
        :camping => false,
        :month => 1
      )
    ])
  end

  it "renders a list of festivals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Logo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
