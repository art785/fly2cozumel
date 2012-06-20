require 'spec_helper'

describe "galleries/index" do
  before(:each) do
    assign(:galleries, [
      stub_model(Gallery,
        :title => "Title",
        :description => "Description"
      ),
      stub_model(Gallery,
        :title => "Title",
        :description => "Description"
      )
    ])
  end

  it "renders a list of galleries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
