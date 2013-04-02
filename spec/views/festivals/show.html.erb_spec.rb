require 'spec_helper'

describe "festivals/show" do
  before(:each) do
    @festival = assign(:festival, stub_model(Festival,
      :name => "Name",
      :logo => "Logo",
      :lineup => "MyText",
      :details => "MyText",
      :camping => false,
      :month => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Logo/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/1/)
  end
end
