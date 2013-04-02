require 'spec_helper'

describe "festivals/edit" do
  before(:each) do
    @festival = assign(:festival, stub_model(Festival,
      :name => "MyString",
      :logo => "MyString",
      :lineup => "MyText",
      :details => "MyText",
      :camping => false,
      :month => 1
    ))
  end

  it "renders the edit festival form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => festivals_path(@festival), :method => "post" do
      assert_select "input#festival_name", :name => "festival[name]"
      assert_select "input#festival_logo", :name => "festival[logo]"
      assert_select "textarea#festival_lineup", :name => "festival[lineup]"
      assert_select "textarea#festival_details", :name => "festival[details]"
      assert_select "input#festival_camping", :name => "festival[camping]"
      assert_select "input#festival_month", :name => "festival[month]"
    end
  end
end
