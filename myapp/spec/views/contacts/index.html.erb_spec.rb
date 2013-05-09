require 'spec_helper'

describe "contacts/index" do
  before(:each) do
    assign(:contacts, [
      stub_model(Contact,
        :lastname => "Lastname",
        :firstname => "Firstname"
      ),
      stub_model(Contact,
        :lastname => "Lastname",
        :firstname => "Firstname"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
  end
end
